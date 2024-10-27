// GENERATED FILE    DO NOT CHANGE MANUALLY     SEE tools/specifications_builder.dart

part of iban;

/// A list of all known IBAN specifications.
const Map<String, Specification> specifications = {
  'AD': Specification('AD', 24, 'F04F04A12', 'AD1200012030200359100100', r'^AD[0-9]{2}([0-9]{04})([0-9]{04})([0-9A-Za-z]{12})$'),
  'AE': Specification('AE', 23, 'F03F16', 'AE070331234567890123456', r'^AE[0-9]{2}([0-9]{03})([0-9]{16})$'),
  'AL': Specification('AL', 28, 'F08A16', 'AL47212110090000000235698741', r'^AL[0-9]{2}([0-9]{08})([0-9A-Za-z]{16})$'),
  'AT': Specification('AT', 20, 'F05F11', 'AT611904300234573201', r'^AT[0-9]{2}([0-9]{05})([0-9]{11})$'),
  'AZ': Specification('AZ', 28, 'U04A20', 'AZ21NABZ00000000137010001944', r'^AZ[0-9]{2}([A-Z]{04})([0-9A-Za-z]{20})$'),
  'BA': Specification('BA', 20, 'F03F03F08F02', 'BA391290079401028494', r'^BA[0-9]{2}([0-9]{03})([0-9]{03})([0-9]{08})([0-9]{02})$'),
  'BE': Specification('BE', 16, 'F03F07F02', 'BE68539007547034', r'^BE[0-9]{2}([0-9]{03})([0-9]{07})([0-9]{02})$'),
  'BG': Specification('BG', 22, 'U04F04F02A08', 'BG80BNBG96611020345678', r'^BG[0-9]{2}([A-Z]{04})([0-9]{04})([0-9]{02})([0-9A-Za-z]{08})$'),
  'BH': Specification('BH', 22, 'U04A14', 'BH67BMAG00001299123456', r'^BH[0-9]{2}([A-Z]{04})([0-9A-Za-z]{14})$'),
  'BR': Specification('BR', 29, 'F08F05F10U01A01', 'BR9700360305000010009795493P1', r'^BR[0-9]{2}([0-9]{08})([0-9]{05})([0-9]{10})([A-Z]{01})([0-9A-Za-z]{01})$'),
  'BY': Specification('BY', 28, 'A04F04A16', 'BY13NBRB3600900000002Z00AB00', r'^BY[0-9]{2}([0-9A-Za-z]{04})([0-9]{04})([0-9A-Za-z]{16})$'),
  'CH': Specification('CH', 21, 'F05A12', 'CH9300762011623852957', r'^CH[0-9]{2}([0-9]{05})([0-9A-Za-z]{12})$'),
  'CR': Specification('CR', 22, 'F04F14', 'CR72012300000171549015', r'^CR[0-9]{2}([0-9]{04})([0-9]{14})$'),
  'CY': Specification('CY', 28, 'F03F05A16', 'CY17002001280000001200527600', r'^CY[0-9]{2}([0-9]{03})([0-9]{05})([0-9A-Za-z]{16})$'),
  'CZ': Specification('CZ', 24, 'F04F06F10', 'CZ6508000000192000145399', r'^CZ[0-9]{2}([0-9]{04})([0-9]{06})([0-9]{10})$'),
  'DE': Specification('DE', 22, 'F08F10', 'DE89370400440532013000', r'^DE[0-9]{2}([0-9]{08})([0-9]{10})$'),
  'DK': Specification('DK', 18, 'F04F09F01', 'DK5000400440116243', r'^DK[0-9]{2}([0-9]{04})([0-9]{09})([0-9]{01})$'),
  'DO': Specification('DO', 28, 'U04F20', 'DO28BAGR00000001212453611324', r'^DO[0-9]{2}([A-Z]{04})([0-9]{20})$'),
  'EE': Specification('EE', 20, 'F02F02F11F01', 'EE382200221020145685', r'^EE[0-9]{2}([0-9]{02})([0-9]{02})([0-9]{11})([0-9]{01})$'),
  'EG': Specification('EG', 29, 'F04F04F17', 'EG800002000156789012345180002', r'^EG[0-9]{2}([0-9]{04})([0-9]{04})([0-9]{17})$'),
  'ES': Specification('ES', 24, 'F04F04F01F01F10', 'ES9121000418450200051332', r'^ES[0-9]{2}([0-9]{04})([0-9]{04})([0-9]{01})([0-9]{01})([0-9]{10})$'),
  'FI': Specification('FI', 18, 'F06F07F01', 'FI2112345600000785', r'^FI[0-9]{2}([0-9]{06})([0-9]{07})([0-9]{01})$'),
  'FO': Specification('FO', 18, 'F04F09F01', 'FO6264600001631634', r'^FO[0-9]{2}([0-9]{04})([0-9]{09})([0-9]{01})$'),
  'FR': Specification('FR', 27, 'F05F05A11F02', 'FR1420041010050500013M02606', r'^FR[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'GB': Specification('GB', 22, 'U04F06F08', 'GB29NWBK60161331926819', r'^GB[0-9]{2}([A-Z]{04})([0-9]{06})([0-9]{08})$'),
  'GE': Specification('GE', 22, 'U02F16', 'GE29NB0000000101904917', r'^GE[0-9]{2}([A-Z]{02})([0-9]{16})$'),
  'GI': Specification('GI', 23, 'U04A15', 'GI75NWBK000000007099453', r'^GI[0-9]{2}([A-Z]{04})([0-9A-Za-z]{15})$'),
  'GL': Specification('GL', 18, 'F04F09F01', 'GL8964710001000206', r'^GL[0-9]{2}([0-9]{04})([0-9]{09})([0-9]{01})$'),
  'GR': Specification('GR', 27, 'F03F04A16', 'GR1601101250000000012300695', r'^GR[0-9]{2}([0-9]{03})([0-9]{04})([0-9A-Za-z]{16})$'),
  'GT': Specification('GT', 28, 'A04A20', 'GT82TRAJ01020000001210029690', r'^GT[0-9]{2}([0-9A-Za-z]{04})([0-9A-Za-z]{20})$'),
  'HR': Specification('HR', 21, 'F07F10', 'HR1210010051863000160', r'^HR[0-9]{2}([0-9]{07})([0-9]{10})$'),
  'HU': Specification('HU', 28, 'F03F04F01F15F01', 'HU42117730161111101800000000', r'^HU[0-9]{2}([0-9]{03})([0-9]{04})([0-9]{01})([0-9]{15})([0-9]{01})$'),
  'IE': Specification('IE', 22, 'U04F06F08', 'IE29AIBK93115212345678', r'^IE[0-9]{2}([A-Z]{04})([0-9]{06})([0-9]{08})$'),
  'IL': Specification('IL', 23, 'F03F03F13', 'IL620108000000099999999', r'^IL[0-9]{2}([0-9]{03})([0-9]{03})([0-9]{13})$'),
  'IS': Specification('IS', 26, 'F04F02F06F10', 'IS140159260076545510730339', r'^IS[0-9]{2}([0-9]{04})([0-9]{02})([0-9]{06})([0-9]{10})$'),
  'IT': Specification('IT', 27, 'U01F05F05A12', 'IT60X0542811101000000123456', r'^IT[0-9]{2}([A-Z]{01})([0-9]{05})([0-9]{05})([0-9A-Za-z]{12})$'),
  'IQ': Specification('IQ', 23, 'U04F03A12', 'IQ98NBIQ850123456789012', r'^IQ[0-9]{2}([A-Z]{04})([0-9]{03})([0-9A-Za-z]{12})$'),
  'JO': Specification('JO', 30, 'A04F22', 'JO15AAAA1234567890123456789012', r'^JO[0-9]{2}([0-9A-Za-z]{04})([0-9]{22})$'),
  'KW': Specification('KW', 30, 'U04A22', 'KW81CBKU0000000000001234560101', r'^KW[0-9]{2}([A-Z]{04})([0-9A-Za-z]{22})$'),
  'KZ': Specification('KZ', 20, 'F03A13', 'KZ86125KZT5004100100', r'^KZ[0-9]{2}([0-9]{03})([0-9A-Za-z]{13})$'),
  'LB': Specification('LB', 28, 'F04A20', 'LB62099900000001001901229114', r'^LB[0-9]{2}([0-9]{04})([0-9A-Za-z]{20})$'),
  'LC': Specification('LC', 32, 'U04F24', 'LC07HEMM000100010012001200013015', r'^LC[0-9]{2}([A-Z]{04})([0-9]{24})$'),
  'LI': Specification('LI', 21, 'F05A12', 'LI21088100002324013AA', r'^LI[0-9]{2}([0-9]{05})([0-9A-Za-z]{12})$'),
  'LT': Specification('LT', 20, 'F05F11', 'LT121000011101001000', r'^LT[0-9]{2}([0-9]{05})([0-9]{11})$'),
  'LU': Specification('LU', 20, 'F03A13', 'LU280019400644750000', r'^LU[0-9]{2}([0-9]{03})([0-9A-Za-z]{13})$'),
  'LV': Specification('LV', 21, 'U04A13', 'LV80BANK0000435195001', r'^LV[0-9]{2}([A-Z]{04})([0-9A-Za-z]{13})$'),
  'MC': Specification('MC', 27, 'F05F05A11F02', 'MC5811222000010123456789030', r'^MC[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'MD': Specification('MD', 24, 'U02A18', 'MD24AG000225100013104168', r'^MD[0-9]{2}([A-Z]{02})([0-9A-Za-z]{18})$'),
  'ME': Specification('ME', 22, 'F03F13F02', 'ME25505000012345678951', r'^ME[0-9]{2}([0-9]{03})([0-9]{13})([0-9]{02})$'),
  'MK': Specification('MK', 19, 'F03A10F02', 'MK07250120000058984', r'^MK[0-9]{2}([0-9]{03})([0-9A-Za-z]{10})([0-9]{02})$'),
  'MR': Specification('MR', 27, 'F05F05F11F02', 'MR1300020001010000123456753', r'^MR[0-9]{2}([0-9]{05})([0-9]{05})([0-9]{11})([0-9]{02})$'),
  'MT': Specification('MT', 31, 'U04F05A18', 'MT84MALT011000012345MTLCAST001S', r'^MT[0-9]{2}([A-Z]{04})([0-9]{05})([0-9A-Za-z]{18})$'),
  'MU': Specification('MU', 30, 'U04F02F02F12F03U03', 'MU17BOMM0101101030300200000MUR', r'^MU[0-9]{2}([A-Z]{04})([0-9]{02})([0-9]{02})([0-9]{12})([0-9]{03})([A-Z]{03})$'),
  'NL': Specification('NL', 18, 'U04F10', 'NL91ABNA0417164300', r'^NL[0-9]{2}([A-Z]{04})([0-9]{10})$'),
  'NO': Specification('NO', 15, 'F04F06F01', 'NO9386011117947', r'^NO[0-9]{2}([0-9]{04})([0-9]{06})([0-9]{01})$'),
  'PK': Specification('PK', 24, 'U04A16', 'PK36SCBL0000001123456702', r'^PK[0-9]{2}([A-Z]{04})([0-9A-Za-z]{16})$'),
  'PL': Specification('PL', 28, 'F08F16', 'PL61109010140000071219812874', r'^PL[0-9]{2}([0-9]{08})([0-9]{16})$'),
  'PS': Specification('PS', 29, 'U04A21', 'PS92PALS000000000400123456702', r'^PS[0-9]{2}([A-Z]{04})([0-9A-Za-z]{21})$'),
  'PT': Specification('PT', 25, 'F04F04F11F02', 'PT50000201231234567890154', r'^PT[0-9]{2}([0-9]{04})([0-9]{04})([0-9]{11})([0-9]{02})$'),
  'QA': Specification('QA', 29, 'U04A21', 'QA30AAAA123456789012345678901', r'^QA[0-9]{2}([A-Z]{04})([0-9A-Za-z]{21})$'),
  'RO': Specification('RO', 24, 'U04A16', 'RO49AAAA1B31007593840000', r'^RO[0-9]{2}([A-Z]{04})([0-9A-Za-z]{16})$'),
  'RS': Specification('RS', 22, 'F03F13F02', 'RS35260005601001611379', r'^RS[0-9]{2}([0-9]{03})([0-9]{13})([0-9]{02})$'),
  'SA': Specification('SA', 24, 'F02A18', 'SA0380000000608010167519', r'^SA[0-9]{2}([0-9]{02})([0-9A-Za-z]{18})$'),
  'SC': Specification('SC', 31, 'U04F04F16U03', 'SC18SSCB11010000000000001497USD', r'^SC[0-9]{2}([A-Z]{04})([0-9]{04})([0-9]{16})([A-Z]{03})$'),
  'SE': Specification('SE', 24, 'F03F16F01', 'SE4550000000058398257466', r'^SE[0-9]{2}([0-9]{03})([0-9]{16})([0-9]{01})$'),
  'SI': Specification('SI', 19, 'F05F08F02', 'SI56263300012039086', r'^SI[0-9]{2}([0-9]{05})([0-9]{08})([0-9]{02})$'),
  'SK': Specification('SK', 24, 'F04F06F10', 'SK3112000000198742637541', r'^SK[0-9]{2}([0-9]{04})([0-9]{06})([0-9]{10})$'),
  'SM': Specification('SM', 27, 'U01F05F05A12', 'SM86U0322509800000000270100', r'^SM[0-9]{2}([A-Z]{01})([0-9]{05})([0-9]{05})([0-9A-Za-z]{12})$'),
  'ST': Specification('ST', 25, 'F08F11F02', 'ST68000100010051845310112', r'^ST[0-9]{2}([0-9]{08})([0-9]{11})([0-9]{02})$'),
  'SV': Specification('SV', 28, 'U04F20', 'SV62CENR00000000000000700025', r'^SV[0-9]{2}([A-Z]{04})([0-9]{20})$'),
  'TL': Specification('TL', 23, 'F03F14F02', 'TL380080012345678910157', r'^TL[0-9]{2}([0-9]{03})([0-9]{14})([0-9]{02})$'),
  'TN': Specification('TN', 24, 'F02F03F13F02', 'TN5910006035183598478831', r'^TN[0-9]{2}([0-9]{02})([0-9]{03})([0-9]{13})([0-9]{02})$'),
  'TR': Specification('TR', 26, 'F05F01A16', 'TR330006100519786457841326', r'^TR[0-9]{2}([0-9]{05})([0-9]{01})([0-9A-Za-z]{16})$'),
  'UA': Specification('UA', 29, 'F25', 'UA511234567890123456789012345', r'^UA[0-9]{2}([0-9]{25})$'),
  'VA': Specification('VA', 22, 'F18', 'VA59001123000012345678', r'^VA[0-9]{2}([0-9]{18})$'),
  'VG': Specification('VG', 24, 'U04F16', 'VG96VPVG0000012345678901', r'^VG[0-9]{2}([A-Z]{04})([0-9]{16})$'),
  'XK': Specification('XK', 20, 'F04F10F02', 'XK051212012345678906', r'^XK[0-9]{2}([0-9]{04})([0-9]{10})([0-9]{02})$'),
  'AO': Specification('AO', 25, 'F21', 'AO69123456789012345678901', r'^AO[0-9]{2}([0-9]{21})$'),
  'BF': Specification('BF', 27, 'F23', 'BF2312345678901234567890123', r'^BF[0-9]{2}([0-9]{23})$'),
  'BI': Specification('BI', 16, 'F12', 'BI41123456789012', r'^BI[0-9]{2}([0-9]{12})$'),
  'BJ': Specification('BJ', 28, 'F24', 'BJ39123456789012345678901234', r'^BJ[0-9]{2}([0-9]{24})$'),
  'CI': Specification('CI', 28, 'U02F22', 'CI70CI1234567890123456789012', r'^CI[0-9]{2}([A-Z]{02})([0-9]{22})$'),
  'CM': Specification('CM', 27, 'F23', 'CM9012345678901234567890123', r'^CM[0-9]{2}([0-9]{23})$'),
  'CV': Specification('CV', 25, 'F21', 'CV30123456789012345678901', r'^CV[0-9]{2}([0-9]{21})$'),
  'DZ': Specification('DZ', 24, 'F20', 'DZ8612345678901234567890', r'^DZ[0-9]{2}([0-9]{20})$'),
  'IR': Specification('IR', 26, 'F22', 'IR861234568790123456789012', r'^IR[0-9]{2}([0-9]{22})$'),
  'MG': Specification('MG', 27, 'F23', 'MG1812345678901234567890123', r'^MG[0-9]{2}([0-9]{23})$'),
  'ML': Specification('ML', 28, 'U01F23', 'ML15A12345678901234567890123', r'^ML[0-9]{2}([A-Z]{01})([0-9]{23})$'),
  'MZ': Specification('MZ', 25, 'F21', 'MZ25123456789012345678901', r'^MZ[0-9]{2}([0-9]{21})$'),
  'SN': Specification('SN', 28, 'U01F23', 'SN52A12345678901234567890123', r'^SN[0-9]{2}([A-Z]{01})([0-9]{23})$'),
  'LY': Specification('LY', 25, 'F03F03F15', 'LY83002048000020100120361', r'^LY[0-9]{2}([0-9]{03})([0-9]{03})([0-9]{15})$'),
  'GF': Specification('GF', 27, 'F05F05A11F02', 'GF121234512345123456789AB13', r'^GF[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'GP': Specification('GP', 27, 'F05F05A11F02', 'GP791234512345123456789AB13', r'^GP[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'MQ': Specification('MQ', 27, 'F05F05A11F02', 'MQ221234512345123456789AB13', r'^MQ[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'RE': Specification('RE', 27, 'F05F05A11F02', 'RE131234512345123456789AB13', r'^RE[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'PF': Specification('PF', 27, 'F05F05A11F02', 'PF281234512345123456789AB13', r'^PF[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'TF': Specification('TF', 27, 'F05F05A11F02', 'TF891234512345123456789AB13', r'^TF[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'YT': Specification('YT', 27, 'F05F05A11F02', 'YT021234512345123456789AB13', r'^YT[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'NC': Specification('NC', 27, 'F05F05A11F02', 'NC551234512345123456789AB13', r'^NC[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'BL': Specification('BL', 27, 'F05F05A11F02', 'BL391234512345123456789AB13', r'^BL[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'MF': Specification('MF', 27, 'F05F05A11F02', 'MF551234512345123456789AB13', r'^MF[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'PM': Specification('PM', 27, 'F05F05A11F02', 'PM071234512345123456789AB13', r'^PM[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$'),
  'WF': Specification('WF', 27, 'F05F05A11F02', 'WF621234512345123456789AB13', r'^WF[0-9]{2}([0-9]{05})([0-9]{05})([0-9A-Za-z]{11})([0-9]{02})$')
};
