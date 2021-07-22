
import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/app_bar/MenuB.dart';

import 'package:flutter_application/widgets/app_bar/appbar.dart';
import 'package:flutter_application/Screens/home/list.dart';
import 'package:flutter_application/widgets/app_bar/menu.dart';
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
      appBar: AppBarWidget(),
      body: Stack(children: [ Container(
        height:double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
      ),ListHome()],),
      drawer: MenuWidget(),

    );
  }
}
