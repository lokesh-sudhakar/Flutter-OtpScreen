import 'package:flutter/material.dart';
import 'package:otp_screen/otp_screen.dart';


class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {


  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
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
      home: OtpScreen(
        otpLength: 4,
        validateOtp: validateOtp,
        routeCallback: moveToNextScreen,
        titleColor: Colors.black,
        themeColor: Colors.black,
      ),
    );
  }
}

class SuccessfulOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Logged in successful",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
      ),
    );
  }
}

