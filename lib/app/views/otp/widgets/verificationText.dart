import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class verificationText extends StatelessWidget {
  const verificationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 0.01.hp(MediaQuery.of(context).size.height)),
      Text('Verification Code',
          style: TextStyle(
              fontSize: 2.rem(MediaQuery.of(context).size.width),
              fontWeight: FontWeight.bold)),
      SizedBox(height: 0.03.hp(MediaQuery.of(context).size.height)),
      Text('Please enter the verification code sent to  +234812xxxxx9',
          style: TextStyle(
            fontSize: 1.rem(MediaQuery.of(context).size.width),
          )),
      SizedBox(height: 0.05.hp(MediaQuery.of(context).size.height)),
    ]));
  }
}
