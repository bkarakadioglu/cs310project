import 'package:flutter/material.dart';
class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass; // to check whether the value is password or not
  final String hintText;
  final double contentPadding;

  /*final TextInputType textInputType;*/
  const TextFieldInput({Key? key, required this.textEditingController, this.isPass = false, required this.hintText, /*required this.textInputType*/ this.contentPadding = 8.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context)
    );
    return TextField(

      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: EdgeInsets.all(contentPadding),
      ),

      /*keyboardType: textInputType,*/
      obscureText: isPass,
    );
  }
}
