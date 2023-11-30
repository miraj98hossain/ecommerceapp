import 'package:flutter/material.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({
    super.key,
    required this.top,
    required this.right,
  });
  final double top;
  final double right;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      child: Container(
        height: 300,
        width: 300,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(300),
            color: Colors.white.withOpacity(0.2)),
      ),
    );
  }
}
