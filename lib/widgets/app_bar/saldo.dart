import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Saldo extends StatefulWidget {
  Saldo({Key? key}) : super(key: key);
  double tamanho = 18.sp;

  @override
  _SaldoState createState() => _SaldoState();
}

class _SaldoState extends State<Saldo> {

  @override
  Widget build(BuildContext context) {
    int value = 0;
    return Container(
        decoration:BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.circular(20)),
        width: 140.sp,
        height:30.sp,
        child:Stack(
          children:[
            Row(
              children: [
                Padding(
                    padding:EdgeInsets.only(left:6.0.sp,) ,
                    child: Container(child: Text('Seu Saldo:',style: TextStyle(color: Colors.white,fontSize: 10.sp),))
                ),
                Padding(
                    padding:EdgeInsets.only(left:0.0,) ,
                    child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('RS:'+'0000,00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),),
                            Padding(
                              padding: EdgeInsets.only(bottom:0.0.sp,left: 5),
                              child: GestureDetector(
                                onTap:(){
                                  print('tes');
                                  if (widget.tamanho == 18.sp) {
                                    setState(() {
                                      widget.tamanho = 0;
                                    });
                                  }else
                                  setState(() {
                                    widget.tamanho = 18.sp;
                                  });
                                } ,
                                child: Container(
                                  width: 20,
                                  height: 50,
                                  child: Icon(Icons.remove_red_eye,color: Colors.white,)),
                                ),
                              ),
                          ],
                        ))
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 69.sp,top: 7.sp),child: Container(decoration: BoxDecoration(color: Colors.blueGrey.shade100,borderRadius: BorderRadius.circular(10)),width: 55,height: widget.tamanho,))

          ]
        )
    );
  }
}

