import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double stateColor = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            color: Colors.blue,
            width: stateColor,
            height: stateColor,
            duration: const Duration(seconds: 1),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  stateColor += 50;
                });
              },
              child: const Text('Đổi màu'))
        ],
      ),
    );
  }
}
