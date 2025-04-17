enum ShapeType { Circle, Square, Rectangle }

class Shape {
  ShapeType type;
  int insertionIndex;
  int tapCount = 0;

  Shape({required this.type, required this.insertionIndex});
}
