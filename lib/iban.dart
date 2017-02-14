library iban;

import 'package:mod97/mod97.dart';

part 'src/specification_definitions.dart';
part 'src/specification.dart';
part 'src/helpers.dart';

// Mostly copied from:
// https://github.com/arhs/iban.js/blob/master/iban.js

// I tried to keep the same algorithms, so that bugfixes and changes in the original iban.js library can
// be merged into this library.


String electronicFormat(String iban){
  return iban.replaceAll(new RegExp(r'[^a-zA-Z0-9]'), '').toUpperCase();
}


String toPrintFormat(String iban,[String separator = ' ']){
  var every4Chars = new RegExp(r'(.{4})(?!$)');
  return electronicFormat(iban).replaceAllMapped(every4Chars, (_) => '$_$separator');
}

/**
 * Check if an IBAN is valid.
 **/
bool isValid(String iban) {
  if (iban.isEmpty) return false;
  iban = electronicFormat(iban);
  var spec = specifications[iban.substring(0,2)];
  return spec != null && spec.isValid(iban);
}

/**
 * Return a list of countries for which we have a specification.
 */
List<String> getCountries() {
  return specifications.keys.toList(growable: false);
}

String getExample(String country) {
  return specifications[country].example;
}