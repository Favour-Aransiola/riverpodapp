import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            height: 90,
            child: Row(children: [
              Container(
                  width: 45,
                  height: 45,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/profile.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle)),
              const SizedBox(width: 10),
              Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Type your comment',
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15)))))
            ]))
      ]),
    );
  }
}
