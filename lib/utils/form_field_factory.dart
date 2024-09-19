import 'package:flutter/cupertino.dart';
import 'package:wallet_manager/utils/form_field_validation.dart';
import 'package:wallet_manager/widgets/custom_form_field.dart';

enum FormFieldType {
  simple,
  email,
  password;
}

abstract class FormFieldFactory {
  static create(
      {required FormFieldType type,
      required TextEditingController controller,
      required String label}) {
    return switch (type) {
      FormFieldType.simple => CustomFormField(
          label: label, controller: controller, validator: SimpleValidation()),
      FormFieldType.email => CustomFormField(
          label: label, controller: controller, validator: EmailValidation()),
      FormFieldType.password => CustomFormField(
          label: label, controller: controller, validator: PasswordValidation()),
    };
  }
}
