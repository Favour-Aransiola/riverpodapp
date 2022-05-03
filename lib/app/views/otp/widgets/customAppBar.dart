import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(
          icon: Icon(Icons.chevron_left_outlined, size: 30), onPressed: () {}),
    ]));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 100);
}
