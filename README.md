# iban

Validate IBANs

![Build Status](https://travis-ci.org/close2/iban.svg?branch=master)
## Usage

A simple usage example:

    import 'package:iban/iban.dart';

    main() {
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
    }

## Iban specifications

The iban specifications are copied from [iban.js](https://github.com/arhs/iban.js/blob/master/iban.js)

See [specifications.dart](tool/specifications.dart) for all available countries.


Contrary to `iban.js`, which parses the specifications at runtime, all regular expression
strings are parsed using [specifications_builder.dart](tool/specifications_builder.dart).


Please open an issue if you notice that my specifications are out of sync with `iban.js` or
if you know how to build the iban for another country.


