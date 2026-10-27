// Copyright (c) 2017, cl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:iban/iban.dart';
import 'package:test/test.dart';

String _modify(String input) {
  final country = input.substring(0, 2);
  final checksum = int.parse(input.substring(2, 4));
  final nextChecksum = ((checksum % 97) + 1).toString().padLeft(2, '0');
  final account = input.substring(4);
  return '$country$nextChecksum$account';
}

void main() {
  group('Test if example ibans are valid', () {
    test('Test every country', () {
      for (final spec in specifications.values) {
        expect(
          spec.isValid(spec.example),
          isTrue,
          reason:
              'Expected example for ${spec.countryCode} (${spec.example}) to be valid',
        );
      }
    });
  });
  group('Test if example ibans are invalid if a character is added', () {
    test('Test every country', () {
      for (final spec in specifications.values) {
        expect(
          spec.isValid('${spec.example}0'),
          isFalse,
          reason:
              'Expected ${spec.countryCode} example with extra char to be invalid',
        );
      }
    });
  });
  group('Test if example ibans are invalid if checksum is changed', () {
    test('Test every country', () {
      for (final spec in specifications.values) {
        final modified = _modify(spec.example);
        expect(modified.length, equals(spec.example.length));
        expect(
          spec.isValid(modified),
          isFalse,
          reason:
              'Expected ${spec.countryCode} example with modified checksum ($modified) to be invalid',
        );
      }
    });
  });
  group('Test unusual inputs', () {
    test('Test empty string', () {
      expect(isValid(''), isFalse);
    });
    test('Test non existent country code', () {
      expect(isValid('__12345678'), isFalse);
    });
    test('Test short IBAN', () {
      expect(isValid('N'), isFalse);
    });
    test('Test short invalid character at string start', () {
      expect(isValid('_a'), isFalse);
    });
  });
  test('Test spacing', () {
    expect(
        toPrintFormat('NL93RABO4892894109'), equals('NL93 RABO 4892 8941 09'));
  });
  test('Iban with spaces and lowercase is valid', () {
    expect(isValid('at61 1904 3002 3457 3201'), isTrue);
  });
  test('Iban with spaces and lowercase is not valid with sanitize == false',
      () {
    expect(isValid('at61 1904 3002 3457 3201', sanitize: false), isFalse);
  });
}
