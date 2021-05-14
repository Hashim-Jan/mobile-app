import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function onChange;
  final controller;
  final validator;
  final hintText;
  final labelText;

  CustomTextField({
    this.onChange,
    this.controller,
    this.validator,
    this.hintText,
    this.labelText
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        onChanged: onChange,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
