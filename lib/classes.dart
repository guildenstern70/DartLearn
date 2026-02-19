/*
 * Dart Learn - Copyright (c) 2023-26 Alessio Saltarin
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */


/// A Person class
class Person {

  /// Primary constructor
  Person(this.name, this.surname, this.yearOfBirth);

  /// Secondary constructor must be 'named'
  Person.withAge(this.name, this.surname, num age) {
    this.yearOfBirth = DateTime.now().year - age;
  }

  /// Factory constructor
  factory Person.fromJson(Map<String, dynamic> json) =>
      Person(json['name'], json['surname'], json['yearOfBirth']);

  /// Person's Name
  String name = '';

  /// Person's Surname
  String surname = '';

  /// Person's Year of Birth
  num yearOfBirth = 1900;

  /// Get Name
  String get fullName => '$name $surname';

  /// Set Name and Surname
  set fullName(String fullName) {
    var parts = fullName.split(' ');
    this.name = parts[0];
    this.surname = parts[1];
  }

  /// Get Age
  num get age => DateTime.now().year - this.yearOfBirth;

  /// Override toString
  @override
  String toString() => '$fullName (Aged $age)';
}
