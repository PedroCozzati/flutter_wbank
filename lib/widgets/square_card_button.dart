import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class SquareCard extends StatelessWidget {
  final Widget? page;
  final String? title;
  final IconData? icon;
  SquareCard({this.page, this.title, this.icon});


  @override
  Widget build(BuildContext context) {
    return Container(
      width:150.sp,
      height: 140.sp,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return page!;
          }));
        },
        child: Card(
          color: Colors.white,
          child: Center(
            child: Container(
              width: 120.sp,
              height: 50.sp,
              child:Column(
                children: [
                  Text(title!,style: TextStyle(fontSize: 15.sp),),
                  Center(child: Icon(icon,size: 24.sp,color: Colors.blueGrey,),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
