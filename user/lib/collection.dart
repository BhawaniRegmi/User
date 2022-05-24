import 'package:flutter/material.dart';

class MyCollection extends StatelessWidget {
  const MyCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TextField(
          decoration: new InputDecoration(
            icon: new Icon(Icons.search),
            labelText: "Describe Your Issue...",
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Hello'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            // add more IconButton
          ],
        ),
      ),
    );
  }
}
