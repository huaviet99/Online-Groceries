import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_groceries/colors.dart';
import 'package:online_groceries/widgets/RoundedCornerButton.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('images/img_start.png'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: _buildStartPageBody(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStartPageBody() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get your groceries \nwith nectar',
            style: TextStyle(
              color: Color(0xFF030303),
              fontSize: 26.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Center(
            child: Text(
              'Or connect with social media',
              style: TextStyle(
                color: Color(0xFF828282),
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RoundedCornerButton(
            icon: FaIcon(FontAwesomeIcons.google),
            color: MyColor.cornFlowerBlue,
            title: 'Continue with Google',
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          RoundedCornerButton(
            icon: FaIcon(FontAwesomeIcons.facebook),
            color: MyColor.marinerBlue,
            title: 'Continue with Facebook',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
