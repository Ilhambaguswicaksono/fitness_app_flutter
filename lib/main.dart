import 'package:flutter/material.dart';
import 'view/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        backgroundColor: Colors.white,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
