import 'package:blank_app/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringExtension', () {
    test('toCapitalized', () {
      expect('hello'.toCapitalized(), 'Hello');
      expect('Hello world'.toCapitalized(), 'Hello world');
      expect('Hello World'.toCapitalized(), 'Hello world');
    });

    test('toTitleCase', () {
      expect('hello'.toTitleCase(), 'Hello');
      expect('Hello world'.toTitleCase(), 'Hello World');
      expect('Hello World'.toTitleCase(), 'Hello World');
    });
  });
}
