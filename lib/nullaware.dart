/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

///
/// Null checking
///

String doThatIfNotNull()
{
  const String a = null;
  const b = 'something';

  final thisIsNull = a?.toString();
  final thisIsSomething = b?.toString();

  if (thisIsNull == null) {
    return thisIsSomething;
  } // it will return "something"

  return null;
}

/// Return something if null
String returnThatIfThisIsNull() {
  String a;
  const b = 'something';

  return a ?? b; // it will return "something"
}
