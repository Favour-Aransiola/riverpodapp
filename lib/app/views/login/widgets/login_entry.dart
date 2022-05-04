import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';
import 'package:riverpod_test/app/providers/loginProviders/loginProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginEntry extends ConsumerWidget {
  LoginEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    bool visibility_getter = ref.watch(visibility_state.notifier).state;
    return Container(
        child: Form(
      key: formKey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Username or Email',
            style: TextStyle(
              fontSize: 1.rem(MediaQuery.of(context).size.width),
            )),
        Padding(
            padding: EdgeInsets.only(
                top: 0.02.hp(MediaQuery.of(context).size.height),
                bottom: 0.04.hp(MediaQuery.of(context).size.height)),
            child: TextFormField(
              validator: (value) {
                return emailValidator(value);
              },
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  hintText: 'Enter your username or email address',
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            )),
        SizedBox(height: 0.02.hp(MediaQuery.of(context).size.height)),
        Text('Password',
            style: TextStyle(
              fontSize: 1.rem(MediaQuery.of(context).size.width),
            )),
        Padding(
            padding: EdgeInsets.only(
                top: 0.02.hp(MediaQuery.of(context).size.height),
                bottom: 0.04.hp(MediaQuery.of(context).size.height)),
            child: TextFormField(
                validator: (value) {
                  return passwordValidator(value);
                },
                obscureText: visibility_getter,
                decoration: InputDecoration(
                    suffixIcon: visibility_getter == true
                        ? IconButton(
                            icon: const Icon(Icons.visibility),
                            onPressed: () {
                              print(ref.read(visibility_state.notifier).state);
                              print(
                                  'visibility getter' + '${visibility_getter}');
                              ref.read(visibility_state.notifier).state = false;
                            })
                        : IconButton(
                            icon: const Icon(Icons.visibility_off),
                            onPressed: () {
                              ref.read(visibility_state.notifier).state = true;
                              print(visibility_getter);
                            }),
                    contentPadding: const EdgeInsets.all(15),
                    hintText: 'Enter your password',
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))))),
        SizedBox(height: 0.01.hp(MediaQuery.of(context).size.height)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(),
          Text('Forgot Password?',
              style: TextStyle(
                color: Colors.red,
                fontSize: 1.rem(MediaQuery.of(context).size.width),
              ))
        ]),
        SizedBox(height: 0.1.hp(MediaQuery.of(context).size.height))
      ]),
    ));
  }
}
