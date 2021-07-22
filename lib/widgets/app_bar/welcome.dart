import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:70.sp ,
      height:18.sp ,
      child: Row(
          children:[
            Icon(Icons.person,size: 15.sp),
            Text(' Olá Pedro',style:TextStyle(color: Colors.white,fontSize: 10.sp),
            )
          ]),
    );
  }
}
