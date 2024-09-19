import 'package:flutter/material.dart';
import 'package:wallet_manager/theme/color_values.dart';
import 'package:wallet_manager/theme/font_size_values.dart';

class SignInSubHeader extends StatelessWidget {
  const SignInSubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Sign in view",
        style: TextStyle(
            fontSize: FontSizeValues.subHeader, color: ColorValues.subHeader));
  }
}
