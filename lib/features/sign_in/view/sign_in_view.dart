import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_manager/features/sign_in/bloc/sign_in_bloc.dart';
import 'package:wallet_manager/features/sign_in/bloc/sign_in_event.dart';
import 'package:wallet_manager/features/sign_in/bloc/sign_in_state.dart';
import 'package:wallet_manager/features/sign_in/widgets/redirect_text_button.dart';
import 'package:wallet_manager/features/sign_in/widgets/sign_in_button.dart';
import 'package:wallet_manager/features/sign_in/widgets/sign_in_header.dart';
import 'package:wallet_manager/features/sign_in/widgets/sign_up_subheader.dart';
import 'package:wallet_manager/theme/color_values.dart';
import 'package:wallet_manager/utils/form_field_factory.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => SignInBloc(), child: SignInBody());
  }
}

class SignInBody extends StatefulWidget {
  SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _onButtonPressed(){
    BlocProvider.of<SignInBloc>(context).add(SignInIntent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: ColorValues.primary,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
            child: Column(
              children: [
                SizedBox(height: 72),
                SignInHeader(),
                SignInSubHeader(),
                SizedBox(height: 32),
                Expanded(
                    child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            FormFieldFactory.create(
                                type: FormFieldType.email,
                                controller: _emailController,
                                label: 'Email'),
                            FormFieldFactory.create(
                                type: FormFieldType.password,
                                controller: _passwordController,
                                label: 'Password'),
                          ],
                        ))),
                BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
                  if (state is SignInInitial) {
                    return SignInButton(onPressed: _onButtonPressed);
                  } else if (state is SignInLoading) {
                    return SignInButton(child: CircularProgressIndicator());
                  }else if (state is SignInSuccessfully){
                    return SignInButton(onPressed: _onButtonPressed);
                  }
                  return const SizedBox();
                }),
                RedirectTextSignUp(onClick: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
