import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/app_bar/MenuB.dart';
import 'package:flutter_application/widgets/app_bar/menu.dart';
import 'package:flutter_application/widgets/app_bar/saldo.dart';
import 'package:flutter_application/widgets/app_bar/title.dart';
import 'package:flutter_application/widgets/app_bar/welcome.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget():
        super(
        preferredSize: Size.fromHeight(225.sp),
        child: Container(
          height: 225.sp,
          width: 50.w,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
          child:Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:0,top: 0),
                child: Center(
                  child: Container(
                    height: 190.sp,
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                    width: 90.w,
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400])),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom:80.sp,),
                              child: Menub()
                            ),
                            Row(
                              children:[
                                Padding(
                                  padding:EdgeInsets.only(left:25.sp,top:0) ,
                                    child: AppTitle(),
                                  ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(left:15.sp,top:30.sp) ,
                                child: WelcomeWidget()
                            ),
                            Padding(
                              padding:EdgeInsets.only(left:20.sp,top: 35.sp),
                              child: Saldo()
                            )
                          ],
                        ),
                    ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}


