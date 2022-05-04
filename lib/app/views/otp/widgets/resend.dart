import 'package:riverpod_test/app/extensions/extensions.dart';
import 'package:flutter/material.dart';

class Resend extends StatelessWidget {
  const Resend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.wp(MediaQuery.of(context).size.width),
      height: 0.2.wp(MediaQuery.of(context).size.height),
      child: Column(children: [
        SizedBox(
          height: 0.05.hp(MediaQuery.of(context).size.height),
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: 'Didn\'t recieve the code? ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 1.rem(MediaQuery.of(context).size.width)),
          ),
          TextSpan(
              text: 'Resend',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 1.rem(MediaQuery.of(context).size.width),
                  fontWeight: FontWeight.bold))
        ]))
      ]),
    );
  }
}
