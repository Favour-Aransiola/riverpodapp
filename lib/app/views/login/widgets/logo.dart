import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 0.13.wp(MediaQuery.of(context).size.width),
        height: 0.11.hp(MediaQuery.of(context).size.width),
        child: Stack(
          children: [
            SizedBox(
              width: 0.13.wp(MediaQuery.of(context).size.width),
              height: 0.05.hp(MediaQuery.of(context).size.height),
              child: Column(
                children: [
                  Expanded(child: Container()),
                  Container(
                      width: 0.13.wp(MediaQuery.of(context).size.width),
                      height: 0.05.hp(MediaQuery.of(context).size.height),
                      decoration: const BoxDecoration(color: Colors.red)),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                    width: 0.13.wp(MediaQuery.of(context).size.width),
                    height: 0.13.wp(MediaQuery.of(context).size.width),
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.2),
                        shape: BoxShape.circle))),
            Positioned(
                bottom: 0,
                left: 20,
                child: Container(
                    width: 0.02.hp(MediaQuery.of(context).size.height),
                    height: 0.02.hp(MediaQuery.of(context).size.height),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle)))
          ],
        ));
  }
}
