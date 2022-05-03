import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 0.35.hp(MediaQuery.of(context).size.height),
      flexibleSpace: FlexibleSpaceBar(

        background: SizedBox(
          width: doub,
          child: Stack(

            children: [
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/camp.jpg'),
                          fit: BoxFit.cover))),
              Positioned(
                  bottom: 10,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Column(children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite,
                                          color: Colors.white, size: 30)),
                                  Row(
                                    children: [
                                      const SizedBox(width: 30),
                                      Text('10',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 0.7.rem(
                                                MediaQuery.of(context)
                                                    .size
                                                    .width),
                                          ))
                                    ],
                                  )
                                ]),
                                Column(children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.message_rounded,
                                          color: Colors.white, size: 30)),
                                  Row(
                                    children: [
                                      SizedBox(width: 30),
                                      Text('7',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 0.7.rem(
                                                MediaQuery.of(context)
                                                    .size
                                                    .width),
                                          ))
                                    ],
                                  )
                                ])
                              ],
                            ),
                            SizedBox(width: double.infinity),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.share,
                                    color: Colors.white, size: 30))
                          ]),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
