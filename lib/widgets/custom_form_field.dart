import 'package:flutter/material.dart';
import 'package:wallet_manager/theme/color_values.dart';
import 'package:wallet_manager/theme/font_size_values.dart';
import 'package:wallet_manager/utils/form_field_validation.dart';

class CustomFormField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final ValidationStrategy validator;

  const CustomFormField(
      {super.key,
      required this.label,
      required this.controller,
      required this.validator});

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8,bottom: 4),
            child: Text(widget.label,
                style: TextStyle(
                    fontSize: FontSizeValues.labelFormField,
                    color: ColorValues.text)),
          ),
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                controller: widget.controller,
                validator: widget.validator.validate,
                    decoration: InputDecoration(filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
              ))
            ],
          )
        ],
      ),
    );
  }
}
