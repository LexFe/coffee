
import 'package:coffeeshop/mainhome/homepage/homepage.dart';
import 'package:coffeeshop/mainhome/mainhome.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      color: Colors.black,
      title: 'Coffee Shop',
      home: Scaffold(
        body: HomeLogin(),
      ),
    );
  }
}

