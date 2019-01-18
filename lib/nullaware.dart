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
  String a = null;
  var b = "something";

  var thisIsNull = a?.toString();
  var thisIsSomething = b?.toString();

  if (thisIsNull == null)
    return thisIsSomething; // it will return "something"

  return null;
}

String returnThatIfThisIsNull() {
  String a = null;
  var b = "something";

  return a ?? b; // it will return "something"
}
