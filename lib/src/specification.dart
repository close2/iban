part of '../iban.dart';

final _structureBlock = RegExp(r'(.{3})');
final Map<String, RegExp> _regexCache = {};

/// Create a new Specification for a valid IBAN number.
class Specification {
  /// The code of the country.
  final String countryCode;

  /// The correct length of an IBAN of this country.
  final int length;

  /// The structure of the underlying BBAN (for validation and formatting)
  final String structure;

  /// An example of a valid IBAN
  final String example;

  /// Constructor
  const Specification(
      this.countryCode, this.length, this.structure, this.example);

  /// A regular expression which matches valid IBANs. The checksum however
  /// will of course not be checked.
  String get regexDef => _parseStructure(countryCode, structure);

  /// Check if the passed iban is valid according to this specification.
  bool isValid(String iban) {
    final regex = _regexCache.putIfAbsent(countryCode, () => RegExp(regexDef));
    return length == iban.length &&
        countryCode == iban.substring(0, 2) &&
        regex.hasMatch(iban) &&
        mod97(_iso13616Prepare(iban), onError: (_) => -1) == 1;
  }
}

/// Parse the BBAN structure used to configure each IBAN Specification and
/// returns a matching regular expression.
///
/// A structure is composed of blocks of 3 characters (one letter and 2 digits).
/// Each block represents a logical group in the typical representation of the
/// BBAN. For each group, the letter indicates which characters are allowed in
/// this group and the following 2-digits number tells the length of the group.
String _parseStructure(String countryCode, String structure) {
  final regex = _structureBlock.allMatches(structure).map((match) {
    final block = match[1]!;
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
