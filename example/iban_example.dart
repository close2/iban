import 'package:iban/iban.dart';

main() {
  var iban = 'AT611904300234573201';
  if (isValid(iban)) {
    print('$iban is a valid iban');
  } else {
    print('$iban is not a valid iban');
  }
}
