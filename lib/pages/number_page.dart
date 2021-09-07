import 'package:flutter/material.dart';
import 'package:online_groceries/colors.dart';

class NumberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buildFloatingActionButton(),
      body: SafeArea(
        child: Stack(
          children: [
            _buildPageBackground(),
            _buildNumberPageBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: MyColor.oceanGreen,
      child: Icon(
        Icons.arrow_forward_ios,
        size: 18,
      ),
      onPressed: () {},
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

  Widget _buildNumberPageBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60.0),
          Text(
            'Enter your mobile number',
            style: TextStyle(
              color: Color(0xFF181725),
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'Mobile Number',
            style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Image.asset('images/ic_country.png'),
            ),
          ),
        ],
      ),
    );
  }
}
