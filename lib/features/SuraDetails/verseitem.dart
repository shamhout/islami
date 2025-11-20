import 'package:flutter/material.dart';
import 'package:islame/core/resources/ColorsManger.dart';

class verseItem extends StatelessWidget {
  const verseItem({super.key, required this.verseText});
  final String verseText;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 30,
      color: Colorsmanger.gold.withOpacity(1),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          textAlign: TextAlign.center,
          verseText,
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colorsmanger.black),
        ),
      ),
    );
  }
}
