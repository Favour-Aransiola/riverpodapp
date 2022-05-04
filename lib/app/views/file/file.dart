import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';
import 'package:riverpod_test/app/views/file/widgets/comment.dart';
import 'package:riverpod_test/app/views/file/widgets/mysliverAppBar.dart';
import 'package:riverpod_test/app/views/file/widgets/fileBody.dart';

class File extends StatelessWidget {
  const File({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: const [MyAppBar(), FileBody(), Comment()],
    ));
  }
}
