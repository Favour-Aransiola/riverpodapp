import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1.wp(MediaQuery.of(context).size.width),
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Generation Tank for New Beasts.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 1.1.rem(MediaQuery.of(context).size.width)),
          ),
          Text(
            'An Uprising of Terrific Mobile Devs.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 1.1.rem(MediaQuery.of(context).size.width)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Container(
                  width: 45,
                  height: 45,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/profile.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle)),
              const SizedBox(width: 10),
              Column(children: [
                Text(
                  'AUSA Angela Valdes',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 0.8.rem(MediaQuery.of(context).size.width)),
                ),
                Text(
                  'April 29, 2022 | 0400',
                  style: TextStyle(
                      fontSize: 0.8.rem(MediaQuery.of(context).size.width)),
                )
              ])
            ]),
            Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 2)),
                child: Text(
                  'Soft',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 0.7.rem(MediaQuery.of(context).size.width)),
                ))
          ])
        ]));
  }
}
