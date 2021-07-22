import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.sp,
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
              child: Icon(Icons.monetization_on_outlined,color: Colors.white,size: 35.sp,),
            ),
          )
        ],
      ),
    );
  }
}
