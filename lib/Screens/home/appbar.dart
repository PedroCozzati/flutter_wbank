import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget():
        super(
        preferredSize: Size.fromHeight(220.sp),
        child: Container(
          height: 220.sp,
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
                              child: Container(
                                  width: 20.sp,
                                  height: 25.sp,
                                  child: Icon(Icons.menu,color: Colors.white,size: 20.sp,)
                              ),
                            ),
                            Row(
                              children:[
                                Padding(
                                  padding:EdgeInsets.only(left:25.sp,top:0) ,
                                    child: Container(
                                      height: 100.sp,
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Center(
                                              child: Container(
                                                height: 60.sp,
                                                child: Text('WebBank',style: TextStyle(color: Colors.white,fontSize: 40.sp,fontWeight: FontWeight.bold),
                                                ),
                                              )
                                          ),

                                          Container(
                                            height: 10.sp,
                                            child: Padding(
                                              padding: EdgeInsets.only(top:0.0),
                                              child: Icon(Icons.monetization_on_outlined,color: Colors.white,size: 30.sp,),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(left:15.sp,top:30.sp) ,
                                child: Container(
                                  width:70.sp ,
                                    height:18.sp ,
                                    child: Row(
                                      children:[
                                        Icon(Icons.person,size: 15.sp),
                                        Text(' Olá Pedro',style:TextStyle(color: Colors.white,fontSize: 10.sp),
                                      )
                                  ]),
                            ),
                            ),
                            Padding(
                              padding:EdgeInsets.only(left:55.sp,top: 30.sp),
                              child: Container(
                                  decoration:BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.circular(20)),
                                  width: 115.sp,
                                  height:20.sp,
                                  child:Row(
                                    children: [
                                      Padding(
                                          padding:EdgeInsets.only(left:6.0.sp,) ,
                                          child: Container(child: Text('Seu Saldo:',style: TextStyle(color: Colors.white,fontSize: 10.sp),))
                                      ),
                                      Padding(
                                          padding:EdgeInsets.only(left:0.0,) ,
                                          child: Container(child: Text('RS:'+'0000000',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),))
                                      ),
                                    ],
                                  )
                              ),
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
