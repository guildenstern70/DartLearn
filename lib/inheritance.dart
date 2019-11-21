/*
 * Dart Learn - Copyright (c) Alessio Saltarin.
 * All rights reserved.
 *
 * Licensed under the MIT License. See LICENSE file in the project root
 * for full license information.
 */

import 'dart:math' as math;

/*
  Inheritance & Polymorphism
 */

/// A basic, abstract shape class
abstract class Shape {
  /// Primary constructor
  Shape();

  /// Get shape area
  double getArea();
}

/// A class representing a shape
class Square extends Shape {
  /// Square constructor
  Square(double side) : _side = side;

  @override
  double getArea() => this._side * this._side;

  final double _side;
}

/// A class representing a shape
class Rectangle extends Shape {
  /// Square constructor
  Rectangle(double length, double width)
      : _length = length,
        _width = width;

  @override
  double getArea() => this._length * this._width;

  final double _length;
  final double _width;
}

/// A class representing a shape
class Circle extends Shape {
  /// Square constructor
  Circle(double radius) : _radius = radius;

  @override
  double getArea() => this._radius * this._radius * math.pi;

  final double _radius;
}

/// A factory of shapes
List<Shape> shapeList = [Circle(3.2344), Rectangle(10.0, 20.0), Square(23.2)];

/// Polymorphic method to get areas
double getTotalArea(List<Shape> shapes) {
  var _area = 0.0;
  for (final shape in shapes) {
    _area += shape.getArea();
  }
  return _area;
}
