
// Widget for displaying the title of each section
import 'package:flutter/cupertino.dart';

Widget CounterTitle(String title) {
  return Center(child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Text(title, style: TextStyle(fontSize: 25)),
  ));
}