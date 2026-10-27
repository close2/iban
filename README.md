# iban

Validate IBANs

![Build Status](https://github.com/close2/iban/actions/workflows/dart.yml/badge.svg)
## Usage

A simple usage example:

```dart
import 'package:iban/iban.dart';

void main() {
  final iban = 'at61 1904 3002 3457 3201';

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
}
```

## Iban specifications

The iban specifications were originally copied from [iban.js](https://github.com/arhs/iban.js/blob/master/iban.js) (no longer maintained) and are now synced with [ibankit-js](https://github.com/koblas/ibankit-js).

See [specifications.dart](lib/src/specifications.dart) for all available countries.

Please open an issue if you know how to build the iban for another country.



