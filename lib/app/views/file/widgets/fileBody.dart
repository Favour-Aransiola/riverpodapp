import 'package:flutter/material.dart';
import 'package:riverpod_test/app/views/file/widgets/dropCap.dart';
import 'package:riverpod_test/app/views/file/widgets/header.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class FileBody extends StatelessWidget {
  const FileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      SizedBox(height: 0.02.hp(MediaQuery.of(context).size.height)),
      Container(
          height: 0.16.hp(MediaQuery.of(context).size.height),
          width: double.infinity,
          child: const Header()),
      const Divider(
        color: Colors.grey,
      ),
      dropCap()
    ]));
  }
}
