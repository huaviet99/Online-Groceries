import 'package:flutter/material.dart';
import 'package:online_groceries/colors.dart';
import 'package:online_groceries/widgets/rounded_corner_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _buildPageBackground(),
            _buildLoginPageBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildPageBackground() {
    return Positioned.fill(
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset('images/img_number.png'),
      ),
    );
  }

  Widget _buildLoginPageBody() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset('images/ic_carrot_colorized.png')),
          SizedBox(height: 100.0),
          Text(
            'Login',
            style: TextStyle(
              color: Color(0xFF181725),
              fontSize: 26.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Enter your emails and passwords',
            style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'Email',
            style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 16.0,
            ),
          ),
          TextField(),
          SizedBox(height: 30.0),
          Text(
            'Password',
            style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 16.0,
            ),
          ),
          TextField(),
          SizedBox(height: 5.0),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Color(0xFF181725)),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          RoundedCornerButton(
            title: 'Log In',
            onPressed: () {},
            color: MyColor.oceanGreen,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: MyColor.oceanGreen),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
