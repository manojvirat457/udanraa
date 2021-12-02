import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../appcolors.dart';

class SuccessAlertWidget extends StatelessWidget {
  const SuccessAlertWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/thums.png'),
              SizedBox(
                height: 10,
              ),
              Text(text!,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: FlutterColor.primaryColor,
                        fontSize: 16,
                        height: 1.5),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
