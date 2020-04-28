import 'dart:io';

import 'specifications.dart';

String _template = '''
// GENERATED FILE    DO NOT CHANGE MANUALLY     SEE tools/specifications_builder.dart

part of iban;

/// A list of all known IBAN specifications.
const Map<String, Specification> specifications = {
  INSERT_SPECS_HERE
};
''';

int main(List<String> args) {
  String out = 'lib/src/specification_definitions.dart';
  if (args.isNotEmpty) {
    if (args[0] == '-h' || args[0] == '--help') {
      print('Generates iban specifications in $out.');
      print(
          'If an argument (other than -h or --help) is given, it is used as output-file.');
      return 0;
    }
    out = args[0];
  }

  var specs = getAllSpecs().map((spec) {
    final String countryCode = spec.countryCode;
    final int length = spec.length;
    final String structure = spec.structure;
    final String example = spec.example;
    final String regExpString = _parseStructure(countryCode, structure);

    return "'$countryCode': Specification('$countryCode', $length, '$structure', '$example', r'$regExpString')";
  }).join(',\n  ');
  var outFile = File(out);
  outFile.writeAsStringSync(_template.replaceFirst('INSERT_SPECS_HERE', specs));

  return 0;
}

/// Parse the BBAN structure used to configure each IBAN Specification and returns a matching regular expression.
/// A structure is composed of blocks of 3 characters (one letter and 2 digits). Each block represents
/// a logical group in the typical representation of the BBAN. For each group, the letter indicates which characters
/// are allowed in this group and the following 2-digits number tells the length of the group.
// This is a dart version of parseStructure in
// https://github.com/arhs/iban.js/blob/master/iban.js
String _parseStructure(String countryCode, String structure) {
  // split in blocks of 3 chars
  var regex = RegExp(r'(.{3})').allMatches(structure).map((match) {
    String block = match[1];

    // parse each structure block (1-char + 2-digits)
    var format;
    var pattern = block[0];
    var repeats = block.substring(1);

    switch (pattern) {
      case "A":
        format = "0-9A-Za-z";
        break;
      case "B":
        format = "0-9A-Z";
        break;
      case "C":
        format = "A-Za-z";
        break;
      case "F":
        format = "0-9";
        break;
      case "L":
        format = "a-z";
        break;
      case "U":
        format = "A-Z";
        break;
      case "W":
        format = "0-9a-z";
        break;
    }

    return '([' + format + ']{' + repeats + '})';
  });

  return '^$countryCode[0-9]{2}${regex.join()}\$';
}
