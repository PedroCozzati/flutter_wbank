import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String sub;
  final String label;
  final IconData next;
  final Widget page;
  final String text;
  final String lim;

  const HomeItem(this.title,this.icon,this.sub,this.label,this.next, this.page, this.text, this.lim);

  Widget build(BuildContext context) {
    return  Padding(
        padding:  EdgeInsets.only(left:15.sp),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return page;
            })
            );
          },
          child: Container(
            width:180.sp,
            height: 70.sp,
            child: Card(
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:5.sp),
                      child: Icon(icon,size: 14.sp,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:5.sp),
                      child: Text(title,style: TextStyle(fontSize: 11.sp),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:5.sp),
                      child: Icon(next,size: 15.sp,),
                    ),
                  ],
                ),
                subtitle:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label,style: TextStyle(fontSize: 10.sp,color: Colors.grey),),
                    Text(sub,style: TextStyle(fontSize: 12.sp,color: Colors.indigoAccent),),
                    Row(
                      children: [
                        Text(text,style: TextStyle(fontSize: 9.sp,color: Colors.grey),),
                        Text(lim,style: TextStyle(fontSize: 9.sp,color: Colors.redAccent),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
