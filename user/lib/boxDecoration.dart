import 'package:flutter/material.dart';

class Mybox extends StatelessWidget {
  var text;
  Mybox({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: text,
    );
  }
}
