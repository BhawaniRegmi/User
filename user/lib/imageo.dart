import 'package:flutter/material.dart';
import 'package:user/main.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 20,
        child: Image(image: AssetImage('assets/doctor.png')));
  }
}
