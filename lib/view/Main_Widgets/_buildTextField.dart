// Widget for building a text form field with validation
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTextField({
  required TextEditingController controller,
  required String hintText,
  required String fieldName,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      hintText: hintText,
    ),
    keyboardType: TextInputType.number,
    validator: (value) => _validateField(value, fieldName),
  );

}
// Validation function for text fields
String? _validateField(String? value, String fieldName) {
  if (value == null || value.isEmpty) {
    return 'Please enter $fieldName';
  }
  // Check if the value is a valid number
  if (int.tryParse(value) == null) {
    return 'Please enter a valid number';
  }
  return null;
}
