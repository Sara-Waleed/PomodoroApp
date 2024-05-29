
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeChangingIcon extends StatelessWidget {
  const ThemeChangingIcon({
    super.key,
    required this.isDark,
    required this.Toggle,
  });

  final bool isDark;
  final VoidCallback Toggle;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isDark ? Icons.wb_sunny : Icons.nights_stay),
      onPressed: Toggle,
    );
  }
}