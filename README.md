# null safety version

I've already started a null safety version in branch: null-safety.

As I haven't yet read the migration guide it isn't merged.

## Help wanted!

If you know have read the migration guide please take a look
and open an issue.  (A simple Looks-good-to-me would also be appreciated).

# iban

Validate IBANs

![Build Status](https://travis-ci.org/close2/iban.svg?branch=master)
## Usage

A simple usage example:

    import 'package:iban/iban.dart';

    main() {
      var iban = 'AT611904300234573201';
      if (isValid(iban)) {
        print('$iban is a valid iban');
      } else {
        print('$iban is not a valid iban');
      }
    }

## Iban specifications

The iban specifications are copied from [iban.js](https://github.com/arhs/iban.js/blob/master/iban.js)

See [specifications.dart](tool/specifications.dart) for all available countries.


Contrary to `iban.js`, which parses the specifications at runtime, all regular expression
strings are parsed using [specifications_builder.dart](tool/specifications_builder.dart).


Please open an issue if you notice that my specifications are out of sync with `iban.js` or
if you know how to build the iban for another country.


