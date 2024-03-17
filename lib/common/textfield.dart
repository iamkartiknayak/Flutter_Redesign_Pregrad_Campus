import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kAccentColor.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            CupertinoIcons.search,
            size: 20,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
