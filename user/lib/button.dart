import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  var icono;
  MyButton({Key? key, this.icono}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: icono,
        tooltip: 'Icon button ',
        onPressed: () {},
      ),
    );
  }
}
