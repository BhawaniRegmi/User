import 'package:flutter/material.dart';

class MyDisease extends StatelessWidget {
  var imago;
  MyDisease({Key? key, this.imago}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //  height: 226,
        //   width:245,
        decoration: BoxDecoration(
          image: DecorationImage(
            // image: AssetImage("assets/coldot.jpg"),
            image: imago,
            fit: BoxFit.cover,
          ),
        ),
        child: MaterialButton(
          onPressed: () {},
        ));

    /* Expanded(
          flex: 5,
          child: Container(
              width: 700,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/covid remedies.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: MaterialButton(
                onPressed: () {},
              )),
        ),  */
  }
}
