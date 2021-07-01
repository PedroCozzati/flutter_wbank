import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/home/homePage.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        dividerColor: Colors.deepPurpleAccent,
      ),
      home: Center(
      child: MyHomePage(),
      ),
    );
  }
}