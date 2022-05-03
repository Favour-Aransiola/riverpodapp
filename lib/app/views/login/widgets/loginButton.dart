import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';
import 'package:riverpod_test/app/providers/loginProviders/loginProvider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool is_loading = false;
    return GestureDetector(
      child: Container(
          width: double.infinity,
          height: 0.07.hp(MediaQuery.of(context).size.height),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: is_loading == false
                ? Text('Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 1.rem(MediaQuery.of(context).size.width),
                        fontWeight: FontWeight.bold))
                : Row(children: [
                    CircularProgressIndicator(),
                    SizedBox(width: 20),
                    Text('Please wait...',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 1.rem(MediaQuery.of(context).size.width),
                            fontWeight: FontWeight.bold))
                  ]),
          )),
    );
  }
}
