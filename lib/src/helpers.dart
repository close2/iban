part of iban;

var _A = 'A'.codeUnitAt(0);
var _Z = 'Z'.codeUnitAt(0);

/**
 * Prepare an IBAN for mod 97 computation by moving the first 4 chars to the end and transforming the letters to
 * numbers (A = 10, B = 11, ..., Z = 35), as specified in ISO13616.
 */
String _iso13616Prepare(String iban) {

  iban = iban.toUpperCase();
  iban = iban.substring(4) + iban.substring(0,4);

  return iban.split('').map((n) {
    var code = n.codeUnitAt(0);
    if (code >= _A && code <= _Z){
      // A = 10, B = 11, ... Z = 35
      return '${code - _A + 10}';
    } else {
      return n;
    }
  }).join();
}

