import 'package:demo_ui_flutter/model/widget_model.dart';
import 'package:demo_ui_flutter/view/widget/animated_container.dart';
import 'package:demo_ui_flutter/view/widget/opacity.dart';
import 'package:demo_ui_flutter/view/widget/wrap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWidgetScreen extends StatefulWidget {
  const ListWidgetScreen({Key? key}) : super(key: key);

  @override
  State<ListWidgetScreen> createState() => _ListWidgetScreenState();
}

class _ListWidgetScreenState extends State<ListWidgetScreen> {
  List<WidgetModel> listWidget = [
    WidgetModel(const WrapWidget(), ('wrap')),
    WidgetModel(const AnimatedContainerWidget(), 'AnimatedContainer'),
    WidgetModel(const OpacityWidget(), 'Opacity'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Danh sách widget'),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
          child: ListView.builder(
              itemCount: listWidget.length,
              itemBuilder: (context, index) {
                return TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => listWidget[index].widget),
                      );
                    },
                    child: Container(
                        color: Colors.blue,
                        child: Text(
                          listWidget[index].nameWidget,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.yellow),
                        )));
              }),
        ));
  }
}
