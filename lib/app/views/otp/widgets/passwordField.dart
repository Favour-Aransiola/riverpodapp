import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class passwordField extends StatelessWidget {
  const passwordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 0.1.wp(MediaQuery.of(context).size.width),
                height: 0.11.wp(MediaQuery.of(context).size.width),
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.red,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Colors.grey, style: BorderStyle.solid))),
                )),
            SizedBox(
                width: 0.1.wp(MediaQuery.of(context).size.width),
                height: 0.11.wp(MediaQuery.of(context).size.width),
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.red,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Colors.grey, style: BorderStyle.solid))),
                )),
            SizedBox(
                width: 0.1.wp(MediaQuery.of(context).size.width),
                height: 0.11.wp(MediaQuery.of(context).size.width),
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.red,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Colors.grey, style: BorderStyle.solid))),
                )),
            SizedBox(
                width: 0.1.wp(MediaQuery.of(context).size.width),
                height: 0.11.wp(MediaQuery.of(context).size.width),
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.red,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Colors.grey, style: BorderStyle.solid))),
                ))
          ],
        ));
  }
}
