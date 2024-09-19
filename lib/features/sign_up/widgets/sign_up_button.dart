import 'package:flutter/material.dart';
import 'package:wallet_manager/theme/color_values.dart';
import 'package:wallet_manager/theme/font_size_values.dart';

class SignUpButton extends StatelessWidget {
  final Widget? child;
  final Function()? onPressed;

  const SignUpButton({super.key, this.child, this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FilledButton(
            onPressed: onPressed,
            style: FilledButton.styleFrom(
                backgroundColor: ColorValues.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: child ??
                  Text("Sign up",
                      style: TextStyle(
                          fontSize: FontSizeValues.buttonText,
                          color: ColorValues.text,
                          fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}
