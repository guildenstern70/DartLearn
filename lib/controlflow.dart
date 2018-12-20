/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */


var year = 1994;

int ifThenElse() {

  var century = -1;

  if (year >= 2001) {
    century = 21;
  } else if (year >= 1901) {
      century = 20;
  }

  return century;

}


int loops()
{

  var sum = 0;
  var year = 2000;
  var someNumbers = [34, 243, 21, 12, -32];

  // Collection
  for (var num in someNumbers) {
    sum += num;
  }

  // Classic
  for (int month = 1; month <= 12; month++) {
    sum += month;
  }

  while (year < 2016) {
    year += 1;
  }

  return sum + year;

}


