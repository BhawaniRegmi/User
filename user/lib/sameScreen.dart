import 'package:flutter/material.dart';
import 'package:user/boxDecoration.dart';
import 'package:user/button.dart';

class MyCopyMain extends StatelessWidget {
  const MyCopyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyButton(
                            icono: Icon(Icons.menu),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          MyButton(
                            icono: Icon(Icons.settings),
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.pause,
                              size: 18.0,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          )
                        ],
                      ),
                      Text("city"),
                      Text(
                        'San Fransico',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Mybox(
                                  text: Text("220,000 dollar"),
                                ),
                                Mybox(
                                  text: Text("For sale"),
                                ),
                                Mybox(
                                  text: Text("3-4beds "),
                                ),
                                Mybox(
                                  text: Text("220,000 dollar"),
                                ),
                                Mybox(
                                  text: Text("220,000 dollar"),
                                ),
                                Mybox(
                                  text: Text("220,000 dollar"),
                                ),
                              ],
                            ),
                          ),
                          padding: EdgeInsets.all(12)),
                      Container(
                        height: 400,
                        width: 500,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: AssetImage('assets/third.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.black,
                            width: 8,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Center(
                          child: Container(
                        child: Text("lextent"),
                      )),
                      Container(
                        height: 400,
                        width: 500,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: AssetImage('assets/second.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.black,
                            width: 8,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Center(
                          child: MaterialButton(
                        onPressed: () {},
                        child: Text("buy above image"),
                      ))
                    ],
                  ),
                ),
              ),
              MyButton(
                icono: Icon(Icons.fire_extinguisher),
              )
            ],
          ),
        ),
      ),
    );
  }
}
