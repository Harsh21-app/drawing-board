import 'package:drawing_board/models/shape_model.dart';
import 'package:flutter/material.dart';

class ShapeButton extends StatelessWidget {
  final ShapeType type;
  final VoidCallback onTap;

  const ShapeButton({super.key, required this.type, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(type.name),
    );
  }
}
