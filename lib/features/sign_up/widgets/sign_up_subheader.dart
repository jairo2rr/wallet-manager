import 'package:flutter/material.dart';
import 'package:wallet_manager/theme/color_values.dart';
import 'package:wallet_manager/theme/font_size_values.dart';

class SignUpSubHeader extends StatelessWidget {
  const SignUpSubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Sign up view",
        style: TextStyle(
            fontSize: FontSizeValues.subHeader, color: ColorValues.subHeader));
  }
}
