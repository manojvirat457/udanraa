// SignupForm Decoration
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appcolors.dart';

InputDecoration inputDecoration(
    {String? labelname,
    Widget? prefixText,
    Widget? suffixText,
    String? hinttext}) {
  return InputDecoration(
    
    counter: new SizedBox(height: 0.0),
    labelText: labelname,
    labelStyle: GoogleFonts.montserrat(
        textStyle: TextStyle(
            fontSize: 16,
            color: FlutterColor.primaryColor,
            fontWeight: FontWeight.w700)),
    alignLabelWithHint: true,
    hintText: hinttext,
    filled: true,
    fillColor: Colors.white,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    hintStyle: TextStyle(
      color: FlutterColor.hintColor,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      borderSide:
          BorderSide(color: FlutterColor.signupFormBorderColor, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      borderSide:
          BorderSide(color: FlutterColor.signupFormBorderColor, width: 1),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      borderSide: BorderSide(color: Colors.red, width: 1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      borderSide: BorderSide(color: Colors.red, width: 1),
    ),
    // prefix: prefixText,
    prefixIcon: prefixText,
    suffixIcon: suffixText,
  );
}
