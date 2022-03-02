/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

import 'classes.dart';

class XPerson extends Person {

  /// Constructor
  XPerson(String name, String surname, num age) : super(name, surname, age);

  /// Build from JSON
  XPerson.fromJson(dynamic json) : super('', '', -1) {
    dynamic xname = json['name'];
    dynamic xsurname = json['surname'];
    dynamic xage = json['age'];
    this.name = xname as String;
    this.surname = xsurname as String;
    this.age = int.parse(xage as String);
  }

  /// XPerson to JSON
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['age'] = this.age;
    return data;
  }

}

/// Decode JSON to Person
Person decodeJsonToPerson(String jsonPerson) => XPerson.fromJson(jsonPerson);

/// Enconde Person to JSON
Map<String, dynamic> encodeToJson(XPerson p) => p.toJson();
