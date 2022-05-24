

import 'package:flutter/material.dart';

 TextField(
     decoration: new InputDecoration(
     icon: new Icon(Icons.search)
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