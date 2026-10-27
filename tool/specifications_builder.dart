import 'dart:io';

import 'specifications.dart';

const String _template = '''
// GENERATED FILE    DO NOT CHANGE MANUALLY     SEE tool/specifications_builder.dart

part of '../iban.dart';

/// A list of all known IBAN specifications.
const Map<String, Specification> specifications = {
  INSERT_SPECS_HERE
};
''';

int main(List<String> args) {
  var out = 'lib/src/specification_definitions.gen.dart';
  if (args.isNotEmpty) {
    if (args[0] == '-h' || args[0] == '--help') {
      print('Generates iban specifications in $out.');
      print(
          'If an argument (other than -h or --help) is given, it is used as output-file.');
      return 0;
    }
    out = args[0];
  }

  final specs = getAllSpecs().map((spec) {
    final countryCode = spec.countryCode;
    final length = spec.length;
    final structure = spec.structure;
    final example = spec.example;
    final regExpString = _parseStructure(countryCode, structure);

    return "'$countryCode': Specification('$countryCode', $length, '$structure', '$example', r'$regExpString')";
  }).join(',\n  ');
  final outFile = File(out);
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
  final regex = RegExp(r'(.{3})').allMatches(structure).map((match) {
    final block = match[1]!;

    // parse each structure block (1-char + 2-digits)
    final pattern = block[0];
    final repeats = block.substring(1);

    final format = switch (pattern) {
      'A' => '0-9A-Za-z',
      'B' => '0-9A-Z',
      'C' => 'A-Za-z',
      'F' => '0-9',
      'L' => 'a-z',
      'U' => 'A-Z',
      'W' => '0-9a-z',
      _ => throw ArgumentError('Unknown structure pattern: $pattern'),
    };

    return '([$format]{$repeats})';
  });

  return '^$countryCode[0-9]{2}${regex.join()}\$';
}
