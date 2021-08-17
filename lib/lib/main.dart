import 'package:flutter/material.dart';
import 'package:my_plant/WelcomeScreen.dart';
import 'package:my_plant/theme.dart';

void main() {
  runApp(MyAppflutter());
}

class MyAppflutter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: WelcomeScreen(),
    );
  }
}
