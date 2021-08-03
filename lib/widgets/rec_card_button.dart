import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget page;
  RecCard(this.title, this.icon, this.page);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return page;
          }));
        },
        child: Flex(
          direction: Axis.horizontal,
          children:[Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 34.sp,
              child:Column(
                children: [
                  Text(title,style: TextStyle(fontSize: 13.sp),),
                  Center(child: Icon(icon,size: 18.sp,color: Colors.blueGrey,),)
                ],
              ),
            ),
          ),]
        ),
      ),
    );
  }
}
