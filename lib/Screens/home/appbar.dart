import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget():
        super(
        preferredSize: Size.fromHeight(45.h),
        child: Container(
          height: 45.h,
          width: 50.w,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
          child:Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:18.0,top: 25),
                child: Container(
                  height: 45.h,
                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                  width: 90.w,
                  decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400])),
                  child: Column(
                    children: [
                      Row(
                        children:[
                          Padding(
                            padding:EdgeInsets.only(left:50.sp,top:40) ,
                              child: Container(
                                child:Center(
                                    child: Text('WebBank',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
                                    )
                                ),
                              ),
                            ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.symmetric(horizontal: 165,vertical: 20) ,
                              child: Icon(Icons.monetization_on_outlined,color: Colors.white,size: 40,))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(left:15.0,top:15) ,
                              child: Container(
                                  child: Row(
                                    children:[
                                      Icon(Icons.person),
                                      Text(' Olá Pedro',style:TextStyle(color: Colors.white),
                                    )
                                ]),
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:90.0,top: 15),
                            child: Container(
                                decoration:BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.circular(20)),
                                width: 160,
                                height:30,
                                child:Row(
                                  children: [
                                    Padding(
                                        padding:EdgeInsets.only(left:6.0,top:1) ,
                                        child: Container(child: Text('Seu Saldo:',style: TextStyle(color: Colors.white),))
                                    ),
                                    Padding(
                                        padding:EdgeInsets.only(left:0.0,top:1) ,
                                        child: Container(child: Text('RS:'+'0000000',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
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
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 20,
                    height: 20,
                    child: Icon(Icons.menu,color: Colors.white,)
                ),
              ),

            ],
          ),
        ),
      );
}
