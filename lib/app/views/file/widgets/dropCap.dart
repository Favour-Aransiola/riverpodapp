import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_test/app/extensions/extensions.dart';

class dropCap extends StatelessWidget {
  const dropCap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          DropCapText(
            "You can inspect this widget using the 'Inspect Widget' button in the VS Code notification.The overflowing RenderFlex has an orientation of Axis.vertical.The edge of the RenderFlex that is overflowing has been marked in the rendering with a yellow and black striped pattern. This is usually caused by the contents being too big for the RenderFlex",
            style: TextStyle(
                height: 1.3,
                fontSize: 0.9.rem(MediaQuery.of(context).size.width)),
            dropCapStyle: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 2.rem(MediaQuery.of(context).size.width)),
          ),
          const SizedBox(height: 10),
          Text(
              "Consider applying a flex factor (e.g. using an Expanded widget) to force the children of the RenderFlex to fit within the available space instead of being sized to their natural size.This is considered an error condition because it indicates that there is content that cannot be seen. If the content is legitimately bigger than the available space, consider clipping it with a ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex, like a ListView.",
              style: TextStyle(
                height: 1.3,
                fontSize: 0.9.rem(MediaQuery.of(context).size.width),
              ))
        ]));
  }
}
