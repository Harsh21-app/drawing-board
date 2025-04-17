import 'package:drawing_board/models/shape_model.dart';
import 'package:flutter/material.dart';
import '../../widgets/shape_button.dart';
import '../../widgets/shape_widget.dart';

class DrawingBoardScreen extends StatefulWidget {
  const DrawingBoardScreen({super.key});

  @override
  State<DrawingBoardScreen> createState() => _DrawingBoardScreenState();
}

class _DrawingBoardScreenState extends State<DrawingBoardScreen> {
  final List<Shape> _shapes = [];
  final List<ShapeType> _insertionHistory = [];

  void _addShape(ShapeType type) {
    setState(() {
      _insertionHistory.add(type);
      _shapes
          .add(Shape(type: type, insertionIndex: _insertionHistory.length - 1));
    });
  }

  void _onShapeTap(int index) {
    setState(() {
      Shape shape = _shapes[index];
      List<ShapeType> historyBefore =
          _insertionHistory.sublist(0, shape.insertionIndex);

      if (shape.tapCount < historyBefore.length) {
        shape.type = historyBefore[historyBefore.length - 1 - shape.tapCount];
        shape.tapCount += 1;
      } else {
        _shapes.removeAt(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawing Board'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Wrap(
                children: List.generate(_shapes.length, (index) {
                  return GestureDetector(
                    onTap: () => _onShapeTap(index),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ShapeWidget(shape: _shapes[index]),
                    ),
                  );
                }),
              ),
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: ShapeType.values.map((type) {
              return ShapeButton(
                type: type,
                onTap: () => _addShape(type),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
