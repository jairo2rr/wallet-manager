import 'package:flutter/material.dart';
import 'package:wallet_manager/theme/color_values.dart';
import 'package:wallet_manager/theme/font_size_values.dart';

class RedirectTextSignIn extends StatelessWidget {
  final Function() onClick;

  const RedirectTextSignIn({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You have an account? ",
            style: TextStyle(
                fontSize: FontSizeValues.redirectText,
                color: ColorValues.subHeader),
          ),
          GestureDetector(
              onTap: onClick,
              child: Text("Login here",
                  style: TextStyle(
                      fontSize: FontSizeValues.redirectText,
                      color: ColorValues.text,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorValues.text)))
        ],
      ),
    );
  }
}
