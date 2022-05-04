import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 0.35.hp(MediaQuery.of(context).size.height),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/camp.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: SizedBox(
              width: 1.hp(MediaQuery.of(context).size.width),
              height: 0.35.hp(MediaQuery.of(context).size.height),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                      bottom: 0.1.rem(MediaQuery.of(context).size.width),
                      left: 0,
                      child: Container(
                          width: 1.hp(MediaQuery.of(context).size.width),
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Column(children: [
                                    const Icon(Icons.favorite,
                                        color: Colors.white, size: 30),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              width: 0.08.hp(
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width)),
                                          Text('10',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 1.rem(
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width)))
                                        ])
                                  ]),
                                  SizedBox(
                                      width: 0.06.wp(
                                          MediaQuery.of(context).size.width)),
                                  Column(children: [
                                    const Icon(Icons.message_rounded,
                                        color: Colors.white, size: 30),
                                    Row(children: [
                                      SizedBox(
                                          width: 0.08.hp(MediaQuery.of(context)
                                              .size
                                              .width)),
                                      Text('7',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 1.rem(
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width)))
                                    ])
                                  ])
                                ]),
                                const Icon(Icons.share,
                                    size: 30, color: Colors.white)
                              ],
                            ),
                          )))
                ],
              ),
            )),
      ),
    );
  }
}
