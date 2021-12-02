import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:udanraa/profileupdate/views/profileUpdateScreenView.dart';
import 'package:udanraa/signup/views/signupScreenViews.dart';

import 'package:udanraa/utils/appcolors.dart';

class SigninScreenView extends StatefulWidget {
  SigninScreenView({Key? key}) : super(key: key);

  @override
  _SigninScreenViewState createState() => _SigninScreenViewState();
}

class _SigninScreenViewState extends State<SigninScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Signin',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: FlutterColor.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 33.0, right: 33.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  'assets/dr 1.png',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Sign In',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: FlutterColor.primaryColor,
                  fontSize: 16,
                )),
              ),
              Divider(
                endIndent: 305.0,
                color: FlutterColor.dividerColor,
                thickness: 2.0,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLength: 10,
                decoration: mobileNumberDec(),
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontWeight: FontWeight.w700)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'OTP',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: FlutterColor.primaryColor,
                      fontSize: 16,
                    )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 60,
                    child: OtpTextField(
                      cursorColor: FlutterColor.primaryColor,
                      margin: EdgeInsets.all(4.0),
                      numberOfFields: 4,
                      borderColor: FlutterColor.primaryColor,
                      focusedBorderColor: FlutterColor.primaryColor,
                      enabledBorderColor: FlutterColor.primaryColor,
                      borderWidth: 1.0,
                      fieldWidth: 40,
                      showFieldAsBox: true,
                      onCodeChanged: (String code) {},
                      textStyle: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileUpdateScreenView()),
                    );
                  },
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    primary: FlutterColor.primaryColor,
                    textStyle: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: FlutterColor.primaryColor,
                      fontSize: 16,
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'Didn\'t  receive an OTP ?',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: FlutterColor.primaryColor,
                    fontSize: 14,
                  )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'Resend OTP ?',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: FlutterColor.primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'If new user',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: FlutterColor.primaryColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreenView()),
                      );
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                      primary: FlutterColor.primaryColor,
                      textStyle: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: FlutterColor.primaryColor,
                        fontSize: 16,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'By Signing in you agree to our\nTerms & conditions and Privacy policy',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: FlutterColor.txtGreyColor,
                      fontSize: 12,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// Mobile Number Decoration
  InputDecoration mobileNumberDec() {
    return InputDecoration(
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 12.0),
        child: Text(
          '+91',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: 16,
                  color: FlutterColor.primaryColor,
                  fontWeight: FontWeight.w700)),
        ),
      ),
      hintText: 'Enter 10 Digit Mobile Numbers',
      hintStyle: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: FlutterColor.hintColor, fontWeight: FontWeight.w700)),
      filled: true,
      counter: new SizedBox(height: 0.0),
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.all(14.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: FlutterColor.primaryColor),
        borderRadius: BorderRadius.circular(3.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: FlutterColor.primaryColor, width: 1.0),
        borderRadius: BorderRadius.circular(3.0),
      ),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(8.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(8.0)),
    );
  }
}
