// Copyright (c) 2017, cl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:iban/iban.dart';
import 'package:test/test.dart';

String _modify(String input) {
  var country = input.substring(0, 2);
  var checksum = int.parse(input.substring(2, 4));
  var account = input.substring(4);
  return '$country${checksum + 1}$account';
}

void main() {
  group('Test if example ibans are valid', () {
    test('Test every country', () {
      expect(specifications.values.every((spec) => spec.isValid(spec.example)), isTrue);
    });
  });
  group('Test if example ibans are invalid if a character is added', () {
    test('Test every country', () {
      expect(specifications.values.any((spec) => spec.isValid(spec.example + '0')), isFalse);
    });
  });
  group('Test if example ibans are invalid if checksum is changed', () {
    test('Test every country', () {
      expect(specifications.values.any((spec) => spec.isValid(_modify(spec.example))), isFalse);
    });
  });
  group('Test unusual inputs', () {
    test('Test null input', () {
      expect(() => isValid(null), throwsNoSuchMethodError);
    });
    test('Test empty string', () {
      expect(isValid(''), isFalse);
    });
    test('Test non existant country code', () {
      expect(isValid('__12345678'), isFalse);
    });
    test('Test short IBAN', () {
      expect(isValid('N'), isFalse);
    });
  });
  test('Test spacing', () {
    expect(toPrintFormat('NL93RABO4892894109'), equals('NL93 RABO 4892 8941 09'));
  });
}
