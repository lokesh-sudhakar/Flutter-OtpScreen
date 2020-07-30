# otp_screen

A new Flutter package for both android & iOS which helps developer in creating Otp screen with few lines of code.

[![](https://img.shields.io/badge/package-flutter-blue)](https://github.com/lokesh-sudhakar/Flutter-OtpScreen)
[![](https://img.shields.io/badge/platform-android%20%26%20ios-bg)](https://github.com/lokesh-sudhakar/Flutter-OtpScreen)

### Show some :heart: and star the repo to support the project

## Screenshots

<img src="ss_blue.jpeg" height="300em" /> <img src="ss_gradient_1.jpeg" height="300em" /> <img src="ss_gradient_2.jpeg" height="300em" />

---

## Usage

[Example](https://github.com/lokesh-sudhakar/Flutter-OtpScreen/blob/master/example/example_app.dart)

To use this package:

* add the dependency to your [pubspec.yaml] file.

```yaml
    dependencies:
        flutter:
          sdk: flutter
        otp_screen: <latest-version>
```

### How to use

```dart

  // logic to validate otp return [null] when success else error [String]
  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  // action to be performed after OTP validation is success
  void moveToNextScreen(context) {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => SuccessfulOtpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialize the OTP screen by passing validation logic and route callback
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

```
The above code opens the simple OTP screen
<img src="ss_white.jpeg" height="300em" />

---

### Customize Options

You can play with different colors and add gradients as background to the screen

```dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpScreen.withGradientBackground(
          topColor: Color(0xFFcc2b5e),
          bottomColor: Color(0xFF753a88),
          otpLength: 4,
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
```

The output of the above code will open below screen.
<img src="ss_insta_1.jpeg" height="300em" />


### Created & Maintained By

[Lokesh Chennamchetty] (https://github.com/lokesh-sudhakar) ([LinkedIn](https://www.linkedin.com/in/lokesh-chennamchetty))

