import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../appcolors.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    Key? key,
    this.genderTxt,
   this.isHintColor = false,
  }) : super(key: key);
  
  final String? genderTxt;
  final bool isHintColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:10.0,vertical: 20.0),
      decoration: BoxDecoration(
        color: isHintColor ? FlutterColor.hintColor : Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: FlutterColor.signupFormBorderColor)),
      child: Center(
        child: Text(
           genderTxt!,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: 16,
                color: FlutterColor.primaryColor,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
