import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_groceries/colors.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: MyColor.oceanGreen,
      ),
      child: Scaffold(
        body: Container(
          color: MyColor.oceanGreen,
          child: Center(
            child: Image.asset('images/img_app.png'),
          ),
        ),
      ),
    );
  }
}
