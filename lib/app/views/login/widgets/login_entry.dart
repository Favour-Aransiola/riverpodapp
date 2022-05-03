import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';
import 'package:riverpod_test/app/providers/loginProviders/loginProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginEntry extends StatelessWidget {
  const LoginEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                emailValidator(value);
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
          child: Consumer(builder: ((context, ref, child) {
            bool visibility = ref.watch(visibility_state);
            return TextFormField(
                validator: (value) {
                  passwordValidator(value);
                },
                obscureText: visibility,
                decoration: InputDecoration(
                    suffixIcon: visibility == true
                        ? IconButton(
                            icon: const Icon(Icons.visibility),
                            onPressed: () {
                              visibility = false;
                            })
                        : IconButton(
                            icon: const Icon(Icons.visibility_off),
                            onPressed: () {
                              visibility = true;
                            }),
                    contentPadding: const EdgeInsets.all(15),
                    hintText: 'Enter your password',
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))));
          })),
        ),
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
