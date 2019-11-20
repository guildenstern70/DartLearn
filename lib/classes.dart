/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

/*
  Classes
 */

/// A Person class
class Person {

  /// Primary constructor
  Person(this._name, this._surname, this._age);

  /// Secondary constructor must be 'named'
  Person.ageOfTen(String name, String surname) {
    this._name = name;
    this._surname = surname;
    this._age = 10;
  }

  String _name;
  String _surname;
  num _age;

  /// Get Name
  String get name => _name;

  /// Get Surname
  String get surname => _surname;

  /// Get Full Name (Name+Surname)
  String get fullname => '$_name $_surname';

  /// Get Age
  num get age => _age;

  /// Override toString
  @override
  String toString() => '$fullname (Aged $_age)';
}
