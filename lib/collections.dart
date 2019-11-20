/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

/*
  Basic Collections
 */

/// A list
List<int> list = [1, 2, 3];

/// Map
Map<int, String> nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

/// Some list operations
void checkList() {
  assert(list.length == 3, 'List should have size of 3');
  assert(list[1] == 2, 'Second element should be 2');
}

/// Iterate on lists
int iterateList() {
  var sum = 0;
  for (final x in list) {
    sum += x;
  }
  return sum;
}

/// ForEach
int iterateGases() {
  var sum = 0;
  nobleGases.forEach((key, val) => sum += key);
  return sum;
}
