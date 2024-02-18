import 'package:flutter/material.dart';
import 'package:threads_app/styles.dart';

class CustomTextField extends StatefulWidget {
  final String? labelText; 
  final TextEditingController? controller;
  const CustomTextField({super.key, this.labelText, required this.controller});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.labelText ?? 'Username',
          labelStyle: TextStyles.bodyText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        ),
      ),
    );
  }
}