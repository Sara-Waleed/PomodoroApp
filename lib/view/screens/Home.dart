import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({Key? key, required this.isDark, required this.Toggle}) : super(key: key);
   final VoidCallback Toggle;
   final bool isDark;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.wb_sunny : Icons.nights_stay),
            onPressed: Toggle,
          ),
        ],
      ),
    );
  }
}
