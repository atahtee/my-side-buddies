import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mytravelbuddy/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Buddy',
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
