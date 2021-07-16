import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/CreditCard/credit_card.dart';
import 'package:sizer/sizer.dart';

class Senha extends StatefulWidget {
  const Senha({Key? key}) : super(key: key);

  @override
  _SenhaState createState() => _SenhaState();
}

class _SenhaState extends State<Senha> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 430.sp,
          height: 690.sp,
          padding: EdgeInsets.only(top: 15.sp),
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100]),
          ),
          child:  Column (
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.white60,
                  height: 80.sp,
                  width: 250.sp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    IconButton(icon: Icon(Icons.arrow_back_outlined,size:20.sp), onPressed:(){ Navigator.pop(context);}),
                    Text('    Digite sua senha para continuar',style: TextStyle(color: Colors.deepPurple.shade900,fontWeight: FontWeight.bold,fontSize: 14.sp),)
                  ],),
                ),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 250.sp,
                            height: 400.sp,
                            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100],),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                              Container(width: 40.sp,height: 40.sp,decoration: BoxDecoration(border:Border.all(color:Colors.black87),color: Colors.white60),
                                child: TextField(
                                  maxLength: 1,
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.numberWithOptions(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20.sp),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    counterText: '',

                                  ),
                                ),
                              ),
                              Container(width: 40.sp,height: 40.sp,decoration: BoxDecoration(border:Border.all(color:Colors.black87),color: Colors.white60),
                                child: TextField(
                                  maxLength: 1,
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.numberWithOptions(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20.sp),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    counterText: '',

                                  ),
                                ),
                              ),
                              Container(width: 40.sp,height: 40.sp,decoration: BoxDecoration(border:Border.all(color:Colors.black87),color: Colors.white60),
                                child: TextField(
                                  maxLength: 1,
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.numberWithOptions(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20.sp),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    counterText: '',

                                  ),
                                ),
                              ),
                              Container(width: 40.sp,height: 40.sp,decoration: BoxDecoration(border:Border.all(color:Colors.black87),color: Colors.white60),
                                child: TextFormField(
                                  maxLength: 1,
                                  autofocus: true,
                                  textInputAction: TextInputAction.send,
                                  keyboardType: TextInputType.numberWithOptions(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20.sp),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    counterText: '',


                                  ),
                                ),
                              ),

                            ],) ),
                      ]
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(bottom:28.0.sp),
                      child: Container(
                        width: 250.sp,
                        height:80.sp,
                        color: Colors.deepPurple,
                        child: InkWell(
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return CreditCard();
                          }));
                          },
                          child: Card(
                            color: Colors.indigo,
                            child: Padding(
                              padding: EdgeInsets.only(top:20.sp),
                              child: Container(
                                width: 180.sp,
                                height:100.sp,
                                child:Column(
                                  children: [
                                    Text('Confirmar',style: TextStyle(fontSize: 18.sp,color: Colors.white),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                Container(
                  height: 0,
                  width: 0,
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade300,Colors.indigo.shade300]),
                  ),
                ),
              ],
            ),
      ],
    ),
          ),

    );
  }
}

