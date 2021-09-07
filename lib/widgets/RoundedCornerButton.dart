import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedCornerButton extends StatelessWidget {
  final String title;
  final Color? color;
  final FaIcon? icon;
  final VoidCallback? onPressed;

  RoundedCornerButton(
      {this.color = Colors.lightBlue,
      this.icon,
      required this.title,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon ?? Container(),
              SizedBox(
                width: 40.0,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
