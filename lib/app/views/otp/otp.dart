import 'package:flutter/material.dart';
import 'package:riverpod_test/app/views/otp/widgets/customAppBar.dart';
import 'package:riverpod_test/app/views/otp/widgets/passwordField.dart';
import 'package:riverpod_test/app/views/otp/widgets/resend.dart';
import 'package:riverpod_test/app/views/otp/widgets/verificationText.dart';
import 'package:riverpod_test/app/views/otp/widgets/verify_button.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            verificationText(),
            passwordField(),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 0.6.hp(MediaQuery.of(context).size.height),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )),
                          child: Column(children: [
                            SizedBox(
                                height: 0.05
                                    .hp(MediaQuery.of(context).size.height)),
                            Container(
                              width: 1.wp(MediaQuery.of(context).size.width),
                              height:
                                  0.1.hp(MediaQuery.of(context).size.height),
                              child: Center(
                                child: Container(
                                    width: 100, height: 100, color: Colors.red),
                              ),
                            ),
                            SizedBox(
                                height: 0.01
                                    .hp(MediaQuery.of(context).size.height)),
                            Container(
                              width: 1.wp(MediaQuery.of(context).size.width),
                              height:
                                  0.05.hp(MediaQuery.of(context).size.height),
                              child: Center(
                                child: Text(
                                  'Account Verified!',
                                  style: TextStyle(
                                    fontSize: 1.1
                                        .rem(MediaQuery.of(context).size.width),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 0.01
                                    .hp(MediaQuery.of(context).size.height)),
                            Container(
                              width: 1.wp(MediaQuery.of(context).size.width),
                              height:
                                  0.05.hp(MediaQuery.of(context).size.height),
                              child: Center(
                                child: Text(
                                  'Your account has been sucessfully verified.',
                                  style: TextStyle(
                                    fontSize: 0.8
                                        .rem(MediaQuery.of(context).size.width),
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    0.1.hp(MediaQuery.of(context).size.height)),
                            Container(
                              width: 1.wp(MediaQuery.of(context).size.width),
                              height:
                                  0.1.hp(MediaQuery.of(context).size.height),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context, '/file', (route) => false);
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 0.6
                                        .wp(MediaQuery.of(context).size.width),
                                    height: 0.08
                                        .hp(MediaQuery.of(context).size.height),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Text(
                                      'Open File',
                                      style: TextStyle(
                                        fontSize: 1.rem(
                                            MediaQuery.of(context).size.width),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        );
                      });
                },
                child: VerifyButton()),
            Resend()
          ]),
        ));
  }
}
