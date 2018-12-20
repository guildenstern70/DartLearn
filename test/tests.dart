/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

import 'package:DartLearn/classes.dart';
import 'package:DartLearn/controlflow.dart';
import 'package:DartLearn/functions.dart';
import 'package:test/test.dart';

void main() {
  test('classes', () {
    var alessio = Person.ageOfTen('Alessio', 'Saltarin');
    var laura = Person('Laura', 'Saltarin', 47);

    expect(alessio.fullname, 'Alessio Saltarin');
    expect(alessio.age, 10);
    expect(laura.age, 47);

  });

  test('controlflow', () {
    var ifSum = ifThenElse();
    var forSum = loops();

    expect(ifSum, 20);
    expect(forSum, 2372);

  });

  test('functions', () {
    var fibo20 = fibonacci(20);
    var fibo30 = shortFibonacci(30);

    expect(fibo20, 6765);
    expect(fibo30, 832040);

  });
}
