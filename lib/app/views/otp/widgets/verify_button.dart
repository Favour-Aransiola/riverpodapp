import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(
          height: 0.1.hp(MediaQuery.of(context).size.height),
        ),
        Container(
          height: 0.07.hp(MediaQuery.of(context).size.height),
          width: 0.7.wp(MediaQuery.of(context).size.width),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text('Log In',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 1.rem(MediaQuery.of(context).size.width),
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    ));
  }
}
