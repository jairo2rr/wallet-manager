import 'package:flutter/material.dart';
import 'package:wallet_manager/features/sign_in/sign_in.dart';
import 'package:wallet_manager/features/sign_up/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet Manager',
      routes: {'/': (_) => SignUpView()},
    );
  }
}
