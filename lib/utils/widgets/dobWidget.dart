import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../appcolors.dart';
import '../signupFormDecoration.dart';

class DOBWidget extends StatelessWidget {
  const DOBWidget(
      {Key? key,
      required this.monthController,
      this.labelTxt,
      this.suffixTxt,
      this.hintTxt})
      : super(key: key);

  final TextEditingController monthController;
  final String? labelTxt;
  final Widget? suffixTxt;
  final String? hintTxt;
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: TextFormField(
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(fontWeight: FontWeight.w700)),
        controller: monthController,
        cursorColor: FlutterColor.primaryColor,
        decoration: inputDecoration(
          labelname: labelTxt,
          suffixText: suffixTxt,
          hinttext: hintTxt,
        ),
      ),
    );
  }
}