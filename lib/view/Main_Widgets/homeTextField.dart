
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeTextField extends StatelessWidget {
  const homeTextField({
    super.key,
    required this.controller,
    required this.text,
  });

  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      keyboardType: TextInputType.number,
      onChanged: (value) {
      value=controller.text;

    },
      decoration: InputDecoration(

          hintText:text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
  }
}