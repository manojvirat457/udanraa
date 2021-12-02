import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udanraa/utils/appcolors.dart';
import 'package:udanraa/utils/signupFormDecoration.dart';
import 'package:udanraa/utils/widgets/dobWidget.dart';
import 'package:udanraa/utils/widgets/genderWidget.dart';
import 'package:intl/intl.dart';
import 'package:udanraa/utils/widgets/successWidget.dart';

class ProfileUpdateScreenView extends StatefulWidget {
  ProfileUpdateScreenView({Key? key}) : super(key: key);

  @override
  _ProfileUpdateScreenViewState createState() =>
      _ProfileUpdateScreenViewState();
}

class _ProfileUpdateScreenViewState extends State<ProfileUpdateScreenView> {
  DateTime dateSet = new DateTime.now();
  var monthController = TextEditingController();
  var dayController = TextEditingController();
  var yearController = TextEditingController();
  String? monthAbbr;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update my profile',
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
                  'Update my profile',
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
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Add Members',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: FlutterColor.primaryColor,
                          fontSize: 18,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: FlutterColor.primaryColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(3.0)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
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
                  maxLines: 3,
                  cursorColor: FlutterColor.primaryColor,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontWeight: FontWeight.w700)),
                  decoration: inputDecoration(
                    labelname: 'Addresss',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      child: Expanded(
                        child: TextFormField(
                          maxLength: 6,
                          cursorColor: FlutterColor.primaryColor,
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.w700)),
                          decoration: inputDecoration(
                            labelname: 'Zip Code',
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          successAlertDialog();
                        },
                        child: Text('Save'),
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
                  ],
                ),
                SizedBox(
                  height: 40,
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


  // Showing Alert Dialog
  successAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SuccessAlertWidget(
                  text: 'Profile Updated\nSuccessfully',
                ),
                SizedBox(
                  height: 10,
                ),
                SuccessAlertWidget(
                  text: 'Members Added\nSuccessfully',
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                  style: ElevatedButton.styleFrom(
                    primary: FlutterColor.primaryColor,
                    textStyle: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: FlutterColor.primaryColor,
                      fontSize: 16,
                    )),
                  )),
            )
          ],
        );
      },
    );
  }
}

