import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class passwordField extends StatelessWidget {
  const passwordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Pinput(
      validator: (value) {
        return null;
      },
      length: 4,
      defaultPinTheme: PinTheme(
          margin: const EdgeInsets.all(10),
          width: 0.12.wp(MediaQuery.of(context).size.width),
          height: 0.07.hp(MediaQuery.of(context).size.height),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black, width: 2, style: BorderStyle.solid))),
      errorText: 'OTP is incorrect',
      obscureText: true,
      onCompleted: (pin) {
        print(pin);
      },
    ));
  }
}
