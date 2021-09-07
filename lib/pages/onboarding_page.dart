import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_groceries/colors.dart';
import 'package:online_groceries/widgets/RoundedCornerButton.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('images/img_onboarding.png'),
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
                child: _buildOnboardingBody(),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingBody() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Image.asset('images/ic_carrot.png'),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Welcome \nto our store',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'Get your groceries in as fast as one hour',
            style: TextStyle(
              fontSize: 16.0,
              color: Color(0xFFFCFCFC),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          RoundedCornerButton(
            title: 'Get Started',
            color: MyColor.oceanGreen,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
