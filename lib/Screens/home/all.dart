import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/app_bar/appbar.dart';
import 'package:flutter_application/Screens/home/homePage.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [

          MyHomePage(),

      ],
    );

  }
}
