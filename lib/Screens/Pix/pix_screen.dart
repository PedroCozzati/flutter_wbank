import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Pix/ListTransferMain.dart';

import 'my_pix.dart';
import 'package:sizer/sizer.dart';

class PixScreen extends StatelessWidget {
  const PixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pix'),
      ) ,
      body: Container(
        width: 430.sp,
        height: 700.sp,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100]),
      ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300.sp,
                    height: 250.sp,
                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade400,Colors.indigo.shade400],),
                    ),
                    child:  Image(image:NetworkImage('https://th.bing.com/th/id/R.32182b40e44b54fde1c0bd27a98ef35b?rik=MnBXNJU27xMT6Q&pid=ImgRaw'),fit: BoxFit.contain,height: 50.sp,width: 50.sp,)),
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width:150.sp,
                  height: 150.sp,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ListTransfer();
                      }));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          width: 90.sp,
                          height: 75.sp,
                          child:Column(
                            children: [
                              Text('Transferir',style: TextStyle(fontSize: 20.sp),),
                              Center(child: Icon(Icons.attach_money,size: 30.sp,color: Colors.blueGrey,),)
                          ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width:150.sp,
                  height: 150.sp,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return MyPix();
                      }));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          width: 120.sp,
                          height: 75.sp,
                          child:Column(
                            children: [
                              Text('Sua chave Pix',style: TextStyle(fontSize: 20.sp),),
                              Center(child: Icon(Icons.vpn_key_rounded,size: 30.sp,color: Colors.blueGrey,),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),

        ],
        )
      ),
    );
  }
}
