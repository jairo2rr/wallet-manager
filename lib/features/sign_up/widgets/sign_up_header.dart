import 'package:flutter/material.dart';
import 'package:wallet_manager/theme/color_values.dart';
import 'package:wallet_manager/theme/font_size_values.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text("Sign up",
          style: TextStyle(
              fontSize: FontSizeValues.header,
              color: ColorValues.text,
              fontWeight: FontWeight.bold)),
    );
  }
}
