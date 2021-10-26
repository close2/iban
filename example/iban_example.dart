import 'package:iban/iban.dart';

/// A simple iban example.
int main() {
  var iban = 'at61 1904 3002 3457 3201';
  if (isValid(iban)) {
    print('$iban is a valid iban');
  } else {
    print('$iban is not a valid iban');
  }

  if (isValid(iban, sanitize: false)) {
    print('$iban without sanitization is a valid iban.');
  } else {
    print('$iban without sanitization is not a valid iban.');
  }

  print('Convert the IBAN into a standard format: ${electronicFormat(iban)}');
  print('To display an IBAN to a user we have: ${toPrintFormat(iban)}');


  return 0;
}
