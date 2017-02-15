part of iban;

/// Create a new Specification for a valid IBAN number.
class Specification {
  /// The code of the country.
  final String countryCode;
  /// The correct length of an IBAN of this country.
  final int length;
  /// The structure of the underlying BBAN (for validation and formatting)
  final String structure;
  /// An example of a valid IBAN
  final String example;
  /// A regular expression which matches valid IBANs.  The checksum however
  /// will of course not be checked.
  final String regexDef;

  /// Constructor
  const Specification(this.countryCode, this.length, this.structure, this.example, this.regexDef);

  /// Check if the passed iban is valid according to this specification.
  bool isValid(String iban) {
    var regex = new RegExp(regexDef);
    return length == iban.length &&
        countryCode == iban.substring(0, 2) &&
        regex.hasMatch(iban) &&
        mod97(_iso13616Prepare(iban), onError: (_) => -1) == 1;
  }
}
