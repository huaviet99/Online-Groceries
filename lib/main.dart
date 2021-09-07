import 'package:flutter/material.dart';
import 'package:online_groceries/pages/login_page.dart';
import 'package:online_groceries/pages/number_page.dart';
import 'package:online_groceries/pages/onboarding_page.dart';
import 'package:online_groceries/pages/sign_up_page.dart';

import 'package:online_groceries/pages/start_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
