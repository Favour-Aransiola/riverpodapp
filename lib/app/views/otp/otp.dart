import 'package:flutter/material.dart';
import 'package:riverpod_test/app/views/otp/widgets/customAppBar.dart';
import 'package:riverpod_test/app/views/otp/widgets/passwordField.dart';
import 'package:riverpod_test/app/views/otp/widgets/verificationText.dart';
import 'package:riverpod_test/app/views/otp/widgets/verify_button.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              children: [verificationText(), passwordField(), VerifyButton()]),
        ));
  }
}
