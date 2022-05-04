import 'package:flutter/material.dart';
import 'package:riverpod_test/app/views/login/widgets/loginButton.dart';
import 'package:riverpod_test/app/views/login/widgets/login_text.dart';
import 'package:riverpod_test/app/views/login/widgets/logo.dart';
import 'package:riverpod_test/app/views/login/widgets/login_entry.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Logo(), LoginText(), LoginEntry(), LoginButton()])));
  }
}
