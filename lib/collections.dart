/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

///
/// Basic Collections
///
var list = [1, 2, 3];
var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

void checkList() {
  assert(list.length == 3);
  assert(list[1] == 2);
}

int iterateList() {
  var sum = 0;
  for (var x in list) {
    sum += x;
  }
  return sum;
}

int iterateGases() {
  var sum = 0;
  nobleGases.forEach((key, val) => sum += key);
  return sum;
}