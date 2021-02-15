import 'package:flutter/material.dart';
import 'package:flutter_layout/constants.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;
  final String action;

  SocialButton({
    @required this.icon,
    @required this.action,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue[700],
          size: 35.0,
        ),
        SizedBox(height: 10.0),
        Text(action, style: kTextButtonStyle),
      ],
    );
  }
}
