import 'package:flutter/material.dart';

TextFormField({
  required controller,
  required labelText,
  KeyboardType,
  TextInputAction,
  obscureText, 
  required bool autofocus, 
  required InputDecoration decoration,
}) {
  return Material(
    elevation: 2,
    shadowColor: Colors.black,
    color: Colors.white,
    borderRadius: BorderRadius.circular(5.0),
    child: TextFormField(
      controller: controller, 
      autofocus: false,
      TextInputAction: TextInputAction,
      KeyboardType: KeyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        contentPadding: const EdgeInsets.all(10),
        border: InputBorder.none,
      ), labelText: null, 
      ),
  );
}

MaterialButton(
{
  required onPressed,
  required text, 
  required Text child, 
  required MaterialColor color,
}
){
return MaterialButton(
  onPressed: onPressed,
  color: Colors.teal,
  child: Text(
    text,
  ), text: null
);
}