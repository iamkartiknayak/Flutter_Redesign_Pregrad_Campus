import 'package:flutter/material.dart';

class TagCard extends StatelessWidget {
  const TagCard({
    super.key,
    required this.label,
    required this.color,
    this.padding,
  });

  final String label;
  final Color color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
