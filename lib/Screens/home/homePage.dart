
import 'package:flutter/material.dart';

import 'package:flutter_application/Screens/home/appbar.dart';
import 'package:flutter_application/Screens/home/list.dart';
import 'package:sizer/sizer.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBarWidget(
      ),
      body: Stack(children: [ Container(
        height: 500.sp,
        width: 500.sp,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
      ),ListHome()],),

    );
  }
}
