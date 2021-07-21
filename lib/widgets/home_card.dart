import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Pix/pix_screen.dart';
import 'package:sizer/sizer.dart';

class HomeCard extends StatelessWidget {
  final String label;
  final Widget page;
  final IconData icon;
  const HomeCard(this.label,this.page, this.icon);

  @override
  Widget build(BuildContext context) {
    const cor_cartao =  Colors.deepPurpleAccent;
    return Container(
      width:80.sp,
      height: 70.sp,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70.sp,
            width: 80.sp,
            child:
            InkWell(
              onTap: (){
                print('teste');
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return page;
                }));
              },
              child: Container(
                width: 80.sp,
                height: 70.sp,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: cor_cartao,),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(icon,color: Colors.white,size: 16.sp,),
                      Container(
                        padding:const EdgeInsets.all(8.0),
                        child: Text(label,style: TextStyle(color: Colors.white,fontSize: 12.sp),),

                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
