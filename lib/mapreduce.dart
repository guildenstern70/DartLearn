/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

/// Map collection to another
List<int> mapToInline() {

  var list = <String>['One', 'Two', 'Three'];

  return list.map( (number) => number.length).toList();

}

/// Map collection with more than one line
List<int> mapTo() {

  var list = <String>['One', 'Two', 'Three'];

  return list.map( (number) {
    var len = number.length;
    return len;
  }).toList();

}

/// Reduce map
int mapReduce(List<int> numbers) => numbers.reduce(
        (value, element) => value + element);
