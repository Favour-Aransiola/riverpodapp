import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';
import 'package:riverpod_test/app/providers/loginProviders/loginProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginButton extends ConsumerWidget {
  LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    bool loading = ref.watch(is_loading);
    return GestureDetector(
      onTap: () async {
        ref.read(is_loading.notifier).state = true;
        if (formKey.currentState!.validate()) {
          Future.delayed(
              const Duration(seconds: 1),
              () => Navigator.pushNamedAndRemoveUntil(
                  context, '/otp', (route) => false));
        } else {
          Future.delayed(const Duration(seconds: 3), () {
            ref.read(is_loading.notifier).state = false;
          });
        }
      },
      child: loading == false
          ? Container(
              width: double.infinity,
              height: 0.07.hp(MediaQuery.of(context).size.height),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text('Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 1.rem(MediaQuery.of(context).size.width),
                          fontWeight: FontWeight.bold))))
          : ref.watch(validator).when(data: (data) {
              return Container(
                  width: double.infinity,
                  height: 0.07.hp(MediaQuery.of(context).size.height),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Row(children: [
                      const CircularProgressIndicator(),
                      const SizedBox(width: 20),
                      Text('Please wait...',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  1.rem(MediaQuery.of(context).size.width),
                              fontWeight: FontWeight.bold))
                    ]),
                  ));
            }, error: (e, _) {
              return Container(
                  width: double.infinity,
                  height: 0.07.hp(MediaQuery.of(context).size.height),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text('Log In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  1.rem(MediaQuery.of(context).size.width),
                              fontWeight: FontWeight.bold))));
            }, loading: () {
              return Container(
                  width: double.infinity,
                  height: 0.07.hp(MediaQuery.of(context).size.height),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text('Log In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  1.rem(MediaQuery.of(context).size.width),
                              fontWeight: FontWeight.bold))));
            }),
    );
  }
}
