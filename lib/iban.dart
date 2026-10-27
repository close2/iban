library;

import 'package:mod97/mod97.dart';

part 'src/helpers.dart';
part 'src/specification.dart';
part 'src/specifications.dart';

// Mostly copied from:
// https://github.com/arhs/iban.js/blob/master/iban.js

// I tried to keep the same algorithms, so that bugfixes and changes in the original iban.js library can
// be merged into this library.

final _nonAlphaNum = RegExp(r'[^a-zA-Z0-9]');
final _every4Chars = RegExp(r'(.{4})(?!$)');

/// Removes all whitespaces and invalid characters from iban and returns the
/// iban in uppercase.
String electronicFormat(String iban) {
  return iban.replaceAll(_nonAlphaNum, '').toUpperCase();
}

/// Inserts a separator every 4 characters.
String toPrintFormat(String iban, [String separator = ' ']) {
  return electronicFormat(iban)
      .replaceAllMapped(_every4Chars, (match) => '${match.group(0)}$separator');
}

String _stripSpaces(String iban) {
  return iban.replaceAll(' ', '').toUpperCase();
}

/// Check if an IBAN is valid.
bool isValid(String iban, {bool sanitize = true}) {
  final normalized = sanitize ? _stripSpaces(iban) : iban;

  if (normalized.length < 2) return false;
  final spec = specifications[normalized.substring(0, 2)];
  return spec != null && spec.isValid(normalized);
}

/// Return a list of countries for which we have a specification.
List<String> getCountries() {
  return specifications.keys.toList(growable: false);
}

/// Return an example iban for country.
String? getExample(String country) {
  return specifications[country]?.example;
}
