import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udanraa/profileupdate/views/profileUpdateScreenView.dart';
import 'package:udanraa/utils/appcolors.dart';
import 'package:udanraa/utils/signupFormDecoration.dart';
import 'package:udanraa/utils/widgets/dobWidget.dart';
import 'package:udanraa/utils/widgets/genderWidget.dart';
import 'package:intl/intl.dart';

class SignupScreenView extends StatefulWidget {
  SignupScreenView({Key? key}) : super(key: key);

  @override
  _SignupScreenViewState createState() => _SignupScreenViewState();
}

class _SignupScreenViewState extends State<SignupScreenView> {
  DateTime dateSet = new DateTime.now();
  var monthController = TextEditingController();
  var dayController = TextEditingController();
  var yearController = TextEditingController();
  String? monthAbbr;
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Signup',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: FlutterColor.primaryColor,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
          return true;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 33.0, right: 33.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Sign up',
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
                  height: 5,
                ),
                Text(
                  'Please sign up to enter in a app',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: FlutterColor.txtGreyColor,
                      fontSize: 14,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: FlutterColor.primaryColor,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontWeight: FontWeight.w700)),
                  decoration: inputDecoration(
                    labelname: 'Full Name',
                    suffixText: Image.asset(
                      'assets/user-icon.png',
                      scale: 25.0,
                      color: FlutterColor.personIconColor,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Gender',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: FlutterColor.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GenderWidget(
                        genderTxt: 'Male',
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: GenderWidget(
                        genderTxt: 'Female',
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: GenderWidget(
                        isHintColor: true,
                        genderTxt: 'Other',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: GestureDetector(
                        onTap: () {
                          chooseDate(context);
                          FocusScope.of(context).requestFocus();
                        },
                        child: DOBWidget(
                          monthController: monthController,
                          labelTxt: 'DOB',
                          hintTxt: 'Month',
                          suffixTxt: Icon(
                            Icons.arrow_drop_down,
                            color: FlutterColor.personIconColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          chooseDate(context);
                          FocusScope.of(context).requestFocus();
                        },
                        child: DOBWidget(
                          monthController: dayController,
                          labelTxt: 'Day',
                          hintTxt: 'DD',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          chooseDate(context);
                          FocusScope.of(context).requestFocus();
                        },
                        child: DOBWidget(
                          monthController: yearController,
                          labelTxt: 'Year',
                          hintTxt: 'YYYY',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: FlutterColor.primaryColor,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontWeight: FontWeight.w700)),
                  maxLength: 10,
                  decoration: inputDecoration(
                    labelname: 'Mobile Number',
                    hinttext: 'Enter 10 Digits Numbers',
                    prefixText: Padding(
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
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  cursorColor: FlutterColor.primaryColor,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontWeight: FontWeight.w700)),
                  decoration: inputDecoration(
                    labelname: 'Email Addresss',
                    suffixText: Icon(
                      Icons.email,
                      color: FlutterColor.hintColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.value,
                      activeColor: FlutterColor.txtGreyColor,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Agree with ',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: FlutterColor.txtGreyColor))),
                          TextSpan(
                              text: 'Terms & Conditions',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: FlutterColor.txtGreyColor))),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      otpScreenBottomSheet();
                    },
                    child: Text('Next'),
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
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Select Date Method
  chooseDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        helpText: 'Date of Birth',
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData(
              accentColor: Colors.black,
              colorScheme: ColorScheme.light(
                primary: FlutterColor.primaryColor,
              ),
              dialogBackgroundColor: Colors.white,
            ),
            child: child ?? Text(""),
          );
        },
        context: context,
        initialDate: dateSet,
        firstDate: DateTime(1935),
        lastDate: DateTime.now() /*.subtract(Duration(days: 1))*/);
    if (picked != null && picked != dateSet) {
      monthAbbr = DateFormat('MMM').format(picked);

      setState(() {
        dateSet = picked;
        print(monthAbbr);
        monthController.text = monthAbbr.toString();
        dayController.text = "${dateSet.day.toString().padLeft(2, '0')}";
        yearController.text = dateSet.year.toString();
      });
    }
  }

  //OTP Screen BottomSheet
  void otpScreenBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(25.0),
            topRight: const Radius.circular(25.0),
          ),
        ),
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: new Container(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
                // height: MediaQuery.of(context).size.height * 0.55,
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Verify your Phone Number',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: FlutterColor.primaryColor,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Enter your OTP code here',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: FlutterColor.txtGreyColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: FlutterColor.primaryColor,
                              child: Icon(
                                Icons.close,
                                size: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, top: 30.0, bottom: 30.0),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                child: OtpTextField(
                                  onSubmit: (String pin) {
                                    print(pin);
                                  },
                                  cursorColor: FlutterColor.primaryColor,
                                  numberOfFields: 4,
                                  borderColor: FlutterColor.primaryColor,
                                  focusedBorderColor: FlutterColor.dividerColor,
                                  enabledBorderColor: FlutterColor.primaryColor,
                                  fillColor: FlutterColor.hintColor,
                                  borderWidth: 2.0,
                                  fieldWidth: 50,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  filled: false,
                                  showFieldAsBox: true,
                                  textStyle: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      color: FlutterColor.primaryColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 45,
                                width: MediaQuery.of(context).size.width * 0.43,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProfileUpdateScreenView()),
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
                                height: 20,
                              ),
                              Center(
                                child: Text(
                                  'Didn\'t  receive any code ?',
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: FlutterColor.txtGreyColor,
                                    fontSize: 14,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  'Resend New Code',
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: FlutterColor.primaryColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
