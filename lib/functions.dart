/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */


/// Normal syntax
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

/// Shorthand syntax
int shortFibonacci(int n) => fibonacci(n);
