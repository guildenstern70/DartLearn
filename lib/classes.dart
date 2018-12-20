/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

///
/// Person class
///
class Person {
  String _name;
  String _surname;
  num _age;

  // Primary constructor
  Person(this._name, this._surname, this._age);

  // Secondary constructor must be 'named'
  Person.ageOfTen(String name, String surname) {
    this._name = name;
    this._surname = surname;
    this._age = 10;
  }

  // Getters and setters
  String get name => _name;
  String get surname => _surname;
  String get fullname => _name + ' ' + _surname;

  num get age => _age;

  // Override toString
  @override
  String toString() {
    return this.fullname + '(Aged ' + this._age.toString() + ')';
  }
}
