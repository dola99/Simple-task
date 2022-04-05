import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.onSaved,
    this.validator,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      style: TextStyle(
        fontSize: MediaQuery.of(context).textScaleFactor * 14,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
        hintStyle: const TextStyle(
          color:Colors.white,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.none,
            color: Color.fromRGBO(234, 237, 242, 1),
          ),
        ),
      ),
    );
  }
}
