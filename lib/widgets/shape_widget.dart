import 'package:drawing_board/models/shape_model.dart';
import 'package:flutter/material.dart';

class ShapeWidget extends StatelessWidget {
  final Shape shape;

  const ShapeWidget({super.key, required this.shape});

  @override
  Widget build(BuildContext context) {
    switch (shape.type) {
      case ShapeType.Circle:
        return Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        );
      case ShapeType.Square:
        return Container(
          width: 60,
          height: 60,
          color: Colors.green,
        );
      case ShapeType.Rectangle:
        return Container(
          width: 80,
          height: 50,
          color: Colors.yellow,
        );
    }
  }
}
