library iban;

import 'package:mod97/mod97.dart';

part 'src/helpers.dart';
part 'src/specification.dart';
part 'src/specification_definitions.gen.dart';

// Mostly copied from:
// https://github.com/arhs/iban.js/blob/master/iban.js

// I tried to keep the same algorithms, so that bugfixes and changes in the original iban.js library can
// be merged into this library.

/// Removes all whitespaces and invalid characters from iban and returns the
/// iban in uppercase.
String electronicFormat(String iban) {
  return iban.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toUpperCase();
}

/// Inserts a separator every 4 characters.
String toPrintFormat(String iban, [String separator = ' ']) {
  var every4Chars = RegExp(r'(.{4})(?!$)');
  return electronicFormat(iban)
      .replaceAllMapped(every4Chars, (match) => '${match.group(0)}$separator');
}

/// Check if an IBAN is valid.
bool isValid(String _iban) {
  if (_iban.length < 2) return false;
  var iban = electronicFormat(_iban);
  var spec = specifications[iban.substring(0, 2)];
  return spec != null && spec.isValid(iban);
}

/// Return a list of countries for which we have a specification.
List<String> getCountries() {
  return specifications.keys.toList(growable: false);
}

/// Return an example iban for country.
String getExample(String country) {
  return specifications[country].example;
}
