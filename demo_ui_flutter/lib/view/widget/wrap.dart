import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap')),
      body: Container(
        child: Wrap(
          direction: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
