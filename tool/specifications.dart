/// This class matches the class used by iban.js
class Specification {
  /// The country of the iban spec.
  final String countryCode;

  /// The correct length for a valid iban in this country.
  final int length;

  /// The structure of a valid iban in this country.
  final String structure;

  /// An example of a valid iban for this country.
  final String example;

  /// Constructor
  const Specification(this.countryCode, this.length, this.structure,
      this.example);
}

/// A small wrapper function which builds a list of specifications.
///
/// Note that all `addSpecification`... lines are copied directly from
/// https://github.com/arhs/iban.js/blob/master/iban.js
Iterable<Specification> getAllSpecs() {
  List<Specification> jsSpecs = <Specification>[];

  void addSpecification(Specification s) => jsSpecs.add(s);

  // copied all addSpecification lines without any modifications from
  // https://github.com/arhs/iban.js/blob/master/iban.js
  addSpecification(
      Specification("AD", 24, "F04F04A12", "AD1200012030200359100100"));
  addSpecification(
      Specification("AE", 23, "F03F16", "AE070331234567890123456"));
  addSpecification(
      Specification("AL", 28, "F08A16", "AL47212110090000000235698741"));
  addSpecification(Specification("AT", 20, "F05F11", "AT611904300234573201"));
  addSpecification(
      Specification("AZ", 28, "U04A20", "AZ21NABZ00000000137010001944"));
  addSpecification(
      Specification("BA", 20, "F03F03F08F02", "BA391290079401028494"));
  addSpecification(Specification("BE", 16, "F03F07F02", "BE68539007547034"));
  addSpecification(
      Specification("BG", 22, "U04F04F02A08", "BG80BNBG96611020345678"));
  addSpecification(Specification("BH", 22, "U04A14", "BH67BMAG00001299123456"));
  addSpecification(Specification(
      "BR", 29, "F08F05F10U01A01", "BR9700360305000010009795493P1"));
  addSpecification(
      Specification("BY", 28, "A04F04A16", "BY13NBRB3600900000002Z00AB00"));
  addSpecification(Specification("CH", 21, "F05A12", "CH9300762011623852957"));
  addSpecification(Specification("CR", 22, "F04F14", "CR72012300000171549015"));
  addSpecification(
      Specification("CY", 28, "F03F05A16", "CY17002001280000001200527600"));
  addSpecification(
      Specification("CZ", 24, "F04F06F10", "CZ6508000000192000145399"));
  addSpecification(Specification("DE", 22, "F08F10", "DE89370400440532013000"));
  addSpecification(Specification("DK", 18, "F04F09F01", "DK5000400440116243"));
  addSpecification(
      Specification("DO", 28, "U04F20", "DO28BAGR00000001212453611324"));
  addSpecification(
      Specification("EE", 20, "F02F02F11F01", "EE382200221020145685"));
  addSpecification(
      Specification("EG", 29, "F04F04F17", "EG800002000156789012345180002"));
  addSpecification(
      Specification("ES", 24, "F04F04F01F01F10", "ES9121000418450200051332"));
  addSpecification(Specification("FI", 18, "F06F07F01", "FI2112345600000785"));
  addSpecification(Specification("FO", 18, "F04F09F01", "FO6264600001631634"));
  addSpecification(
      Specification("FR", 27, "F05F05A11F02", "FR1420041010050500013M02606"));
  addSpecification(
      Specification("GB", 22, "U04F06F08", "GB29NWBK60161331926819"));
  addSpecification(Specification("GE", 22, "U02F16", "GE29NB0000000101904917"));
  addSpecification(
      Specification("GI", 23, "U04A15", "GI75NWBK000000007099453"));
  addSpecification(Specification("GL", 18, "F04F09F01", "GL8964710001000206"));
  addSpecification(
      Specification("GR", 27, "F03F04A16", "GR1601101250000000012300695"));
  addSpecification(
      Specification("GT", 28, "A04A20", "GT82TRAJ01020000001210029690"));
  addSpecification(Specification("HR", 21, "F07F10", "HR1210010051863000160"));
  addSpecification(Specification(
      "HU", 28, "F03F04F01F15F01", "HU42117730161111101800000000"));
  addSpecification(
      Specification("IE", 22, "U04F06F08", "IE29AIBK93115212345678"));
  addSpecification(
      Specification("IL", 23, "F03F03F13", "IL620108000000099999999"));
  addSpecification(
      Specification("IS", 26, "F04F02F06F10", "IS140159260076545510730339"));
  addSpecification(
      Specification("IT", 27, "U01F05F05A12", "IT60X0542811101000000123456"));
  addSpecification(
      Specification("IQ", 23, "U04F03A12", "IQ98NBIQ850123456789012"));
  addSpecification(
      Specification("JO", 30, "A04F22", "JO15AAAA1234567890123456789012"));
  addSpecification(
      Specification("KW", 30, "U04A22", "KW81CBKU0000000000001234560101"));
  addSpecification(Specification("KZ", 20, "F03A13", "KZ86125KZT5004100100"));
  addSpecification(
      Specification("LB", 28, "F04A20", "LB62099900000001001901229114"));
  addSpecification(
      Specification("LC", 32, "U04F24", "LC07HEMM000100010012001200013015"));
  addSpecification(Specification("LI", 21, "F05A12", "LI21088100002324013AA"));
  addSpecification(Specification("LT", 20, "F05F11", "LT121000011101001000"));
  addSpecification(Specification("LU", 20, "F03A13", "LU280019400644750000"));
  addSpecification(Specification("LV", 21, "U04A13", "LV80BANK0000435195001"));
  addSpecification(
      Specification("MC", 27, "F05F05A11F02", "MC5811222000010123456789030"));
  addSpecification(
      Specification("MD", 24, "U02A18", "MD24AG000225100013104168"));
  addSpecification(
      Specification("ME", 22, "F03F13F02", "ME25505000012345678951"));
  addSpecification(Specification("MK", 19, "F03A10F02", "MK07250120000058984"));
  addSpecification(
      Specification("MR", 27, "F05F05F11F02", "MR1300020001010000123456753"));
  addSpecification(
      Specification("MT", 31, "U04F05A18", "MT84MALT011000012345MTLCAST001S"));
  addSpecification(Specification(
      "MU", 30, "U04F02F02F12F03U03", "MU17BOMM0101101030300200000MUR"));
  addSpecification(Specification("NL", 18, "U04F10", "NL91ABNA0417164300"));
  addSpecification(Specification("NO", 15, "F04F06F01", "NO9386011117947"));
  addSpecification(
      Specification("PK", 24, "U04A16", "PK36SCBL0000001123456702"));
  addSpecification(
      Specification("PL", 28, "F08F16", "PL61109010140000071219812874"));
  addSpecification(
      Specification("PS", 29, "U04A21", "PS92PALS000000000400123456702"));
  addSpecification(
      Specification("PT", 25, "F04F04F11F02", "PT50000201231234567890154"));
  addSpecification(
      Specification("QA", 29, "U04A21", "QA30AAAA123456789012345678901"));
  addSpecification(
      Specification("RO", 24, "U04A16", "RO49AAAA1B31007593840000"));
  addSpecification(
      Specification("RS", 22, "F03F13F02", "RS35260005601001611379"));
  addSpecification(
      Specification("SA", 24, "F02A18", "SA0380000000608010167519"));
  addSpecification(Specification(
      "SC", 31, "U04F04F16U03", "SC18SSCB11010000000000001497USD"));
  addSpecification(
      Specification("SE", 24, "F03F16F01", "SE4550000000058398257466"));
  addSpecification(Specification("SI", 19, "F05F08F02", "SI56263300012039086"));
  addSpecification(
      Specification("SK", 24, "F04F06F10", "SK3112000000198742637541"));
  addSpecification(
      Specification("SM", 27, "U01F05F05A12", "SM86U0322509800000000270100"));
  addSpecification(
      Specification("ST", 25, "F08F11F02", "ST68000100010051845310112"));
  addSpecification(
      Specification("SV", 28, "U04F20", "SV62CENR00000000000000700025"));
  addSpecification(
      Specification("TL", 23, "F03F14F02", "TL380080012345678910157"));
  addSpecification(
      Specification("TN", 24, "F02F03F13F02", "TN5910006035183598478831"));
  addSpecification(
      Specification("TR", 26, "F05F01A16", "TR330006100519786457841326"));
  addSpecification(
      Specification("UA", 29, "F25", "UA511234567890123456789012345"));
  addSpecification(Specification("VA", 22, "F18", "VA59001123000012345678"));
  addSpecification(
      Specification("VG", 24, "U04F16", "VG96VPVG0000012345678901"));
  addSpecification(
      Specification("XK", 20, "F04F10F02", "XK051212012345678906"));


  // The following countries are not included in the official IBAN registry but use the IBAN specification

  // Angola
  addSpecification(Specification("AO", 25, "F21", "AO69123456789012345678901"));
  // Burkina
  addSpecification(
      Specification("BF", 27, "F23", "BF2312345678901234567890123"));
  // Burundi
  addSpecification(Specification("BI", 16, "F12", "BI41123456789012"));
  // Benin
  addSpecification(
      Specification("BJ", 28, "F24", "BJ39123456789012345678901234"));
  // Ivory
  addSpecification(
      Specification("CI", 28, "U02F22", "CI70CI1234567890123456789012"));
  // Cameron
  addSpecification(
      Specification("CM", 27, "F23", "CM9012345678901234567890123"));
  // Cape Verde
  addSpecification(Specification("CV", 25, "F21", "CV30123456789012345678901"));
  // Algeria
  addSpecification(Specification("DZ", 24, "F20", "DZ8612345678901234567890"));
  // Iran
  addSpecification(
      Specification("IR", 26, "F22", "IR861234568790123456789012"));
  // Madagascar
  addSpecification(
      Specification("MG", 27, "F23", "MG1812345678901234567890123"));
  // Mali
  addSpecification(
      Specification("ML", 28, "U01F23", "ML15A12345678901234567890123"));
  // Mozambique
  addSpecification(Specification("MZ", 25, "F21", "MZ25123456789012345678901"));
  // Senegal
  addSpecification(
      Specification("SN", 28, "U01F23", "SN52A12345678901234567890123"));

  // The following are regional and administrative French Republic subdivision IBAN specification (same structure as FR, only country code vary)
  addSpecification(
      Specification("GF", 27, "F05F05A11F02", "GF121234512345123456789AB13"));
  addSpecification(
      Specification("GP", 27, "F05F05A11F02", "GP791234512345123456789AB13"));
  addSpecification(
      Specification("MQ", 27, "F05F05A11F02", "MQ221234512345123456789AB13"));
  addSpecification(
      Specification("RE", 27, "F05F05A11F02", "RE131234512345123456789AB13"));
  addSpecification(
      Specification("PF", 27, "F05F05A11F02", "PF281234512345123456789AB13"));
  addSpecification(
      Specification("TF", 27, "F05F05A11F02", "TF891234512345123456789AB13"));
  addSpecification(
      Specification("YT", 27, "F05F05A11F02", "YT021234512345123456789AB13"));
  addSpecification(
      Specification("NC", 27, "F05F05A11F02", "NC551234512345123456789AB13"));
  addSpecification(
      Specification("BL", 27, "F05F05A11F02", "BL391234512345123456789AB13"));
  addSpecification(
      Specification("MF", 27, "F05F05A11F02", "MF551234512345123456789AB13"));
  addSpecification(
      Specification("PM", 27, "F05F05A11F02", "PM071234512345123456789AB13"));
  addSpecification(
      Specification("WF", 27, "F05F05A11F02", "WF621234512345123456789AB13"));


  return jsSpecs;
}
