/*
 * Dart Learn - Copyright (c) 2023-26 Alessio Saltarin
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

import 'classes.dart';

/// A JSON-serializable representation of a Person.
///
/// This class extends [Person] and provides functionality to convert
/// Person objects to and from JSON format.
class JsonPerson extends Person {

  /// Constructor
  JsonPerson(String name, String surname, num yearOfBirth) : 
        super(name, surname, yearOfBirth);

  /// Build from JSON
  JsonPerson.fromJson(dynamic json) : super('', '', -1) {
    dynamic jsonName = json['name'];
    dynamic jsonSurname = json['surname'];
    dynamic jsonYearOfBirth = json['yearOfBirth'];
    this.name = jsonName as String;
    this.surname = jsonSurname as String;
    this.yearOfBirth = int.parse(jsonYearOfBirth as String);
  }

  /// XPerson to JSON
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['yearOfBirth'] = this.yearOfBirth.toString();
    return data;
  }

}

/// Decode JSON to Person
Person decodeJsonToPerson(String jsonPerson) => JsonPerson.fromJson(jsonPerson);

/// Encode Person to JSON
Map<String, dynamic> encodeToJson(JsonPerson p) => p.toJson();
