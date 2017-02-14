part of iban;

/**
 * Create a new Specification for a valid IBAN number.
 *
 * @param countryCode the code of the country
 * @param length the length of the IBAN
 * @param structure the structure of the underlying BBAN (for validation and formatting)
 * @param example an example valid IBAN
 * @constructor
 */
class Specification {
  final String countryCode;
  final int length;
  final String structure;
  final String example;
  final String regexDef;

  const Specification(this.countryCode, this.length, this.structure, this.example, this.regexDef);

  /**
   * Check if the passed iban is valid according to this specification.
   **/
  bool isValid(String iban) {
    var regex = new RegExp(regexDef);
    return length == iban.length &&
        countryCode == iban.substring(0, 2) &&
        regex.hasMatch(iban) &&
        mod97(_iso13616Prepare(iban), onError: (_) => -1) == 1;
  }
}
