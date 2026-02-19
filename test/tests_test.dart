/*
 * Dart Learn - Copyright (c) 2023-26 Alessio Saltarin
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */


import 'dart:convert';

import 'package:dart_learn/classes.dart';
import 'package:dart_learn/collections.dart';
import 'package:dart_learn/controlflow.dart';
import 'package:dart_learn/enum.dart';
import 'package:dart_learn/functions.dart';
import 'package:dart_learn/inheritance.dart';
import 'package:dart_learn/jsonserialize.dart';
import 'package:dart_learn/mapreduce.dart';
import 'package:dart_learn/nullaware.dart';
import 'package:dart_learn/switch.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {

  test('classes', () {
    var alessio = Person.withAge('Alessio', 'Saltarin', 56);
    var laura = Person.withAge('Laura', 'Saltarin', 47);

    expect(alessio.fullName, 'Alessio Saltarin');
    expect(alessio.age, 56);
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
    expect(area, 408);
  });

  test('collections', () {
    expect(iterateList(), 6);
    expect(iterateGases(), 30);
  });

  test('inheritance', () {
    expect(getTotalArea(shapeList), 771.1052794464564);
  });

  test('null-aware', () {
    expect(doThatIfNotNull(), 'something');
    expect(returnThatIfThisIsNull(), 'something');
  });

  test('enums', () {
    expect(Colors.red.index, 1);
    expect(Colors.green.index, 2);
    expect(Colors.blue.index, 0);
    expect(getColorName(Colors.green), 'Green');
  });

  test('mapreduce', () {
    var numbers1 = mapToInline();
    var numbers2 = mapTo();
    expect(mapReduce(numbers1), 11);
    expect(mapReduce(numbers2), 11);
  });

  test('jsonserialize', () {
    var _jsonPerson = '''
      {
        "name": "Alessio",
        "surname": "Saltarin",
        "yearOfBirth": "1970"
      }
      ''';
    dynamic dartJson = jsonDecode(_jsonPerson);
    var person = JsonPerson.fromJson(dartJson);
    expect(person.name, 'Alessio');
    expect(person.surname, 'Saltarin');

    var jsonPerson = person.toJson();
    expect(jsonPerson['yearOfBirth'], '1970');
    expect(jsonPerson['name'], 'Alessio');
    expect(jsonPerson['surname'], 'Saltarin');

  });

}

