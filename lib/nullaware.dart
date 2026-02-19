/*
 * Dart Learn - Copyright (c) 2023-26 Alessio Saltarin
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

///
/// Null checking
///
String? doThatIfNotNull()
{
  const String? a = null;
  const b = 'something';

  if (a == null) {
      return b;
  }

  return null;
}

/// Return something if null
String returnThatIfThisIsNull() {
  String? a;
  const b = 'something';

  return a ?? b; // it will return "something"
}
