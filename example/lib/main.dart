import 'package:flutter/material.dart';
import 'package:otp_screen/otp_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "123456") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  void moveToNextScreen(context) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => SuccessfulOtpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpScreen.withGradientBackground(
          topColor: Color(0xFFcc2b5e),
          bottomColor: Color(0xFF753a88),
          otpLength: 6,
          validateOtp: validateOtp,
          routeCallback: moveToNextScreen,
          themeColor: Colors.white,
          titleColor: Colors.white,
          title: "Phone Number Verification",
          subTitle: "Enter the code sent to \n +919876543210",
          icon: Image.asset(
            'images/phone_logo.png',
            fit: BoxFit.fill,
          ),
      ),
    );
  }
}

class SuccessfulOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text("Otp verification successful",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
        ),
      ),
    );
  }
}
