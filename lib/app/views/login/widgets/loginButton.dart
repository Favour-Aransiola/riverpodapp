import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';
import 'package:riverpod_test/app/providers/loginProviders/loginProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginButton extends ConsumerWidget {
  LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    bool loading = ref.watch(is_loading.notifier).state;
    var validation = ref.watch(validator);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(context, '/otp', (route) => false);
        validation.when(data: (data) {
          Navigator.pushNamedAndRemoveUntil(context, '/otp', (route) => false);
        }, error: (e, _) {
          ref.read(is_loading.notifier).state = false;
        }, loading: () {
          ref.read(is_loading.notifier).state = true;
        });
      },
      child: Container(
          width: double.infinity,
          height: 0.07.hp(MediaQuery.of(context).size.height),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: loading == false
                ? Text('Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 1.rem(MediaQuery.of(context).size.width),
                        fontWeight: FontWeight.bold))
                : Row(children: [
                    const CircularProgressIndicator(),
                    const SizedBox(width: 20),
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
