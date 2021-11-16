import 'package:flutter/material.dart';
import 'package:meeny/constants.dart';
import 'presentations/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBgwhite,
      ),
      home: const Meeny(),
    );
  }
}
