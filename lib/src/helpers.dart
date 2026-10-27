part of '../iban.dart';

const int _a = 65; // 'A'.codeUnitAt(0)
const int _z = 90; // 'Z'.codeUnitAt(0)

/// Prepare an IBAN for mod 97 computation by moving the first 4 chars to the end and transforming the letters to
/// numbers (A = 10, B = 11, ..., Z = 35), as specified in ISO13616.
String _iso13616Prepare(String iban) {
  final upper = iban.toUpperCase();
  final rearranged = upper.substring(4) + upper.substring(0, 4);

  final buffer = StringBuffer();
  for (final code in rearranged.codeUnits) {
    if (code >= _a && code <= _z) {
      // A = 10, B = 11, ... Z = 35
      buffer.write(code - _a + 10);
    } else {
      buffer.writeCharCode(code);
    }
  }
  return buffer.toString();
}
