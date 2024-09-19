import 'package:flutter/material.dart';
import 'package:wallet_manager/features/sign_up/widgets/redirect_sign_in.dart';
import 'package:wallet_manager/features/sign_up/widgets/sign_up_button.dart';
import 'package:wallet_manager/features/sign_up/widgets/sign_up_header.dart';
import 'package:wallet_manager/features/sign_up/widgets/sign_up_subheader.dart';
import 'package:wallet_manager/theme/color_values.dart';
import 'package:wallet_manager/utils/form_field_factory.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SignUpBody();
  }
}

class SignUpBody extends StatelessWidget {
  SignUpBody({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: ColorValues.primary,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
            child: Column(
              children: [
                SizedBox(height: 72),
                SignUpHeader(),
                SignUpSubHeader(),
                SizedBox(height: 32),
                Expanded(
                    child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            FormFieldFactory.create(
                                type: FormFieldType.simple,
                                controller: _fullNameController,
                                label: 'Full name'),
                            FormFieldFactory.create(
                                type: FormFieldType.email,
                                controller: _emailController,
                                label: 'Email'),
                            FormFieldFactory.create(
                                type: FormFieldType.password,
                                controller: _passwordController,
                                label: 'Password'),
                            FormFieldFactory.create(
                                type: FormFieldType.password,
                                controller: _passwordController,
                                label: 'Confirm Password'),
                          ],
                        ))),
                SignUpButton(),
                RedirectTextSignIn(onClick: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
