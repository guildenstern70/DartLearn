/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

import 'enum.dart';

/// Get the color name
String getColorName(Colors color) {

  String colorName;

  switch (color) {
    case Colors.red:
      colorName = 'Red';
      break;
    case Colors.blue:
      colorName = 'Blue';
      break;
    case Colors.green:
      colorName = 'Green';
      break;
    default:
      colorName = 'White';
  }

  return colorName;

}

