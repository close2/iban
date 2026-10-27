part of '../iban.dart';

/// A map of all known IBAN specifications by country code.
///
/// Originally copied from https://github.com/arhs/iban.js/blob/master/iban.js
/// and synced with https://github.com/koblas/ibankit-js
const Map<String, Specification> specifications = {
  'AD': Specification('AD', 24, 'F04F04A12', 'AD1200012030200359100100'),
  'AE': Specification('AE', 23, 'F03A16', 'AE070331234567890123456'),
  'AL': Specification('AL', 28, 'F03F04F01A16', 'AL47212110090000000235698741'),
  'AT': Specification('AT', 20, 'F05F11', 'AT611904300234573201'),
  'AZ': Specification('AZ', 28, 'U04A20', 'AZ21NABZ00000000137010001944'),
  'BA': Specification('BA', 20, 'F03F03F08F02', 'BA391990440001200279'),
  'BE': Specification('BE', 16, 'F03F07F02', 'BE68539007547034'),
  'BG': Specification('BG', 22, 'U04F04F02A08', 'BG80BNBG96611020345678'),
  'BH': Specification('BH', 22, 'U04A14', 'BH67BMAG00001299123456'),
  'BR': Specification(
      'BR', 29, 'F08F05F10U01A01', 'BR9700360305000010009795493P1'),
  'BY': Specification('BY', 28, 'A04F04A16', 'BY13NBRB3600900000002Z00AB00'),
  'CH': Specification('CH', 21, 'F05A12', 'CH9300762011623852957'),
  'CR': Specification('CR', 22, 'F04F14', 'CR05015202001026284066'),
  'CY': Specification('CY', 28, 'F03F05A16', 'CY17002001280000001200527600'),
  'CZ': Specification('CZ', 24, 'F04F06F10', 'CZ6508000000192000145399'),
  'DE': Specification('DE', 22, 'F08F10', 'DE89370400440532013000'),
  'DK': Specification('DK', 18, 'F04F10', 'DK5000400440116243'),
  'DO': Specification('DO', 28, 'A04F20', 'DO28BAGR00000001212453611324'),
  'EE': Specification('EE', 20, 'F02F02F11F01', 'EE382200221020145685'),
  'EG': Specification('EG', 29, 'F04F04F17', 'EG800002000156789012345180002'),
  'ES': Specification('ES', 24, 'F04F04F02F10', 'ES9121000418450200051332'),
  'FI': Specification('FI', 18, 'F03F11', 'FI2112345600000785'),
  'FK': Specification('FK', 18, 'U02F12', 'FK88SC123456789012'),
  'FO': Specification('FO', 18, 'F04F09F01', 'FO6264600001631634'),
  'FR': Specification('FR', 27, 'F05F05A11F02', 'FR1420041010050500013M02606'),
  'GB': Specification('GB', 22, 'U04F06F08', 'GB29NWBK60161331926819'),
  'GE': Specification('GE', 22, 'U02F16', 'GE29NB0000000101904917'),
  'GI': Specification('GI', 23, 'U04A15', 'GI75NWBK000000007099453'),
  'GL': Specification('GL', 18, 'F04F10', 'GL8964710001000206'),
  'GR': Specification('GR', 27, 'F03F04A16', 'GR1601101250000000012300695'),
  'GT': Specification('GT', 28, 'A04F02F02A16', 'GT82TRAJ01020000001210029690'),
  'HR': Specification('HR', 21, 'F07F10', 'HR1210010051863000160'),
  'HU': Specification(
      'HU', 28, 'F03F04F01F15F01', 'HU42117730161111101800000000'),
  'IE': Specification('IE', 22, 'U04F06F08', 'IE29AIBK93115212345678'),
  'IL': Specification('IL', 23, 'F03F03F13', 'IL620108000000099999999'),
  'IS': Specification('IS', 26, 'F04F02F06F10', 'IS140159260076545510730339'),
  'IT': Specification('IT', 27, 'U01F05F05A12', 'IT60X0542811101000000123456'),
  'IQ': Specification('IQ', 23, 'U04F03F12', 'IQ98NBIQ850123456789012'),
  'JO': Specification('JO', 30, 'U04F04A18', 'JO94CBJO0010000000000131000302'),
  'KW': Specification('KW', 30, 'U04A22', 'KW81CBKU0000000000001234560101'),
  'KZ': Specification('KZ', 20, 'F03A13', 'KZ86125KZT5004100100'),
  'LB': Specification('LB', 28, 'F04A20', 'LB62099900000001001901229114'),
  'LC': Specification('LC', 32, 'U04F24', 'LC07HEMM000100010012001200013015'),
  'LI': Specification('LI', 21, 'F05A12', 'LI21088100002324013AA'),
  'LT': Specification('LT', 20, 'F05F11', 'LT121000011101001000'),
  'LU': Specification('LU', 20, 'F03A13', 'LU280019400644750000'),
  'LV': Specification('LV', 21, 'U04A13', 'LV80BANK0000435195001'),
  'MC': Specification('MC', 27, 'F05F05A11F02', 'MC5811222000010123456789030'),
  'MD': Specification('MD', 24, 'A02A18', 'MD24AG000225100013104168'),
  'ME': Specification('ME', 22, 'F03F13F02', 'ME25505000012345678951'),
  'MK': Specification('MK', 19, 'F03A10F02', 'MK07250120000058984'),
  'MN': Specification('MN', 20, 'F04F12', 'MN121234123456789123'),
  'MR': Specification('MR', 27, 'F05F05F11F02', 'MR1300020001010000123456753'),
  'MT': Specification('MT', 31, 'U04F05A18', 'MT84MALT011000012345MTLCAST001S'),
  'MU': Specification(
      'MU', 30, 'U04F02F02F12F03U03', 'MU17BOMM0101101030300200000MUR'),
  'NI': Specification('NI', 28, 'U04F20', 'NI79BAMC00000000000003123123'),
  'NL': Specification('NL', 18, 'U04F10', 'NL91ABNA0417164300'),
  'NO': Specification('NO', 15, 'F04F06F01', 'NO9386011117947'),
  'OM': Specification('OM', 23, 'F03F16', 'OM770180010080577149017'),
  'PK': Specification('PK', 24, 'A04A16', 'PK36SCBL0000001123456702'),
  'PL': Specification('PL', 28, 'F03F04F01F16', 'PL61109010140000071219812874'),
  'PS': Specification('PS', 29, 'U04A21', 'PS92PALS000000000400123456702'),
  'PT': Specification('PT', 25, 'F04F04F11F02', 'PT50000201231234567890154'),
  'QA': Specification('QA', 29, 'U04A21', 'QA58DOHB00001234567890ABCDEFG'),
  'RO': Specification('RO', 24, 'U04A16', 'RO49AAAA1B31007593840000'),
  'RS': Specification('RS', 22, 'F03F13F02', 'RS35260005601001611379'),
  'RU':
      Specification('RU', 33, 'F09F05A15', 'RU0204452560040702810412345678901'),
  'SA': Specification('SA', 24, 'F02A18', 'SA0380000000608010167519'),
  'SC': Specification(
      'SC', 31, 'U04F02F02F16U03', 'SC18SSCB11010000000000001497USD'),
  'SD': Specification('SD', 18, 'F02F12', 'SD8811123456789012'),
  'SE': Specification('SE', 24, 'F03F16F01', 'SE4550000000058398257466'),
  'SI': Specification('SI', 19, 'F02F03F08F02', 'SI56263300012039086'),
  'SK': Specification('SK', 24, 'F04F16', 'SK3112000000198742637541'),
  'SM': Specification('SM', 27, 'U01F05F05A12', 'SM86U0322509800000000270100'),
  'SO': Specification('SO', 23, 'F04F03F12', 'SO061000001123123456789'),
  'ST': Specification('ST', 25, 'F04F04F13', 'ST68000100010051845310112'),
  'SV': Specification('SV', 28, 'U04F04F16', 'SV62CENR00000000000000700025'),
  'TL': Specification('TL', 23, 'F03F14F02', 'TL380080012345678910157'),
  'TN': Specification('TN', 24, 'F02F03A13A02', 'TN5910006035183598478831'),
  'TR': Specification('TR', 26, 'F05A01A16', 'TR330006100519786457841326'),
  'UA': Specification('UA', 29, 'F06F19', 'UA213223130000026007233566001'),
  'VA': Specification('VA', 22, 'A03F15', 'VA59001123000012345678'),
  'VG': Specification('VG', 24, 'U04F16', 'VG96VPVG0000012345678901'),
  'XK': Specification('XK', 20, 'F02F02F10F02', 'XK051212012345678906'),

  // The following countries are not included in the official IBAN registry
  // but use the IBAN specification:

  // Angola
  'AO': Specification('AO', 25, 'F21', 'AO69123456789012345678901'),
  // Burkina Faso
  'BF': Specification('BF', 27, 'F23', 'BF2312345678901234567890123'),
  // Burundi
  'BI': Specification('BI', 27, 'F05F05F11F02', 'BI4210000100010000332045181'),
  // Benin
  'BJ': Specification('BJ', 28, 'A05F05F12F02', 'BJ11B00610100400271101192591'),
  // Central African Republic
  'CF': Specification('CF', 27, 'F23', 'CF4220001000010120069700160'),
  // Congo
  'CG': Specification('CG', 27, 'F23', 'CG3930011000101013451300019'),
  // Ivory Coast
  'CI': Specification('CI', 28, 'A02F22', 'CI93CI0080111301134291200589'),
  // Cameroon
  'CM': Specification('CM', 27, 'F23', 'CM9012345678901234567890123'),
  // Cape Verde
  'CV': Specification('CV', 25, 'F21', 'CV30123456789012345678901'),
  // Djibouti
  'DJ': Specification('DJ', 27, 'F05F05F11F02', 'DJ2110002010010409943020008'),
  // Algeria
  'DZ': Specification('DZ', 24, 'F20', 'DZ8612345678901234567890'),
  // Gabon
  'GA': Specification('GA', 27, 'F05F05A11F02', 'GA2140021010032001890020126'),
  // Equatorial Guinea
  'GQ': Specification('GQ', 27, 'F05F05A11F02', 'GQ7050002001003715228190196'),
  // Honduras
  'HN': Specification('HN', 28, 'U04F20', 'HN54PISA00000000000000123124'),
  // Iran
  'IR': Specification('IR', 26, 'F03F19', 'IR861234568790123456789012'),
  // Comoros
  'KM': Specification('KM', 27, 'F23', 'KM4600005000010010904400137'),
  // Morocco
  'MA': Specification('MA', 28, 'F24', 'MA64011519000001205000534921'),
  // Madagascar
  'MG': Specification('MG', 27, 'F05F05A11F02', 'MG1812345678901234567890123'),
  // Mali
  'ML': Specification('ML', 28, 'U01F23', 'ML15A12345678901234567890123'),
  // Mozambique
  'MZ': Specification('MZ', 25, 'F21', 'MZ25123456789012345678901'),
  // Niger
  'NE': Specification('NE', 28, 'U02F22', 'NE58NE0380100100130305000268'),
  // Senegal
  'SN': Specification('SN', 28, 'A05F05F14', 'SN52A12345678901234567890123'),
  // Chad
  'TD': Specification('TD', 27, 'F23', 'TD8960002000010271091600153'),
  // Togo
  'TG': Specification('TG', 28, 'U02F22', 'TG53TG0090604310346500400070'),
  // Libya
  'LY': Specification('LY', 25, 'F03F03F15', 'LY83002048000020100120361'),

  // Regional and administrative French Republic subdivision IBAN specifications
  // (same structure as FR, only country code varies):
  'GF': Specification('GF', 27, 'F05F05A11F02', 'GF121234512345123456789AB13'),
  'GP': Specification('GP', 27, 'F05F05A11F02', 'GP791234512345123456789AB13'),
  'MQ': Specification('MQ', 27, 'F05F05A11F02', 'MQ221234512345123456789AB13'),
  'RE': Specification('RE', 27, 'F05F05A11F02', 'RE131234512345123456789AB13'),
  'PF': Specification('PF', 27, 'F05F05A11F02', 'PF281234512345123456789AB13'),
  'TF': Specification('TF', 27, 'F05F05A11F02', 'TF891234512345123456789AB13'),
  'YT': Specification('YT', 27, 'F05F05A11F02', 'YT021234512345123456789AB13'),
  'NC': Specification('NC', 27, 'F05F05A11F02', 'NC551234512345123456789AB13'),
  'BL': Specification('BL', 27, 'F05F05A11F02', 'BL391234512345123456789AB13'),
  'MF': Specification('MF', 27, 'F05F05A11F02', 'MF551234512345123456789AB13'),
  'PM': Specification('PM', 27, 'F05F05A11F02', 'PM071234512345123456789AB13'),
  'WF': Specification('WF', 27, 'F05F05A11F02', 'WF621234512345123456789AB13'),
};
