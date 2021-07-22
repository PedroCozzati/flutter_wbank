import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'menu.dart';

class Menub extends StatefulWidget {
  const Menub({Key? key}) : super(key: key);

  @override
  _MenubState createState() => _MenubState();
}

class _MenubState extends State<Menub> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 22.sp,
      height: 22.sp,
      child: IconButton(
        onPressed: ()=> Scaffold.of(context).openDrawer(),
        icon: Icon(Icons.menu,color: Colors.white,size: 20.sp,),
      ),
    );
  }
}

