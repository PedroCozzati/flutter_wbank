import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/CreditCard/credit_card.dart';
import 'package:flutter_application/Screens/Guardar/guardar_dinheiro.dart';
import 'package:flutter_application/Screens/Pix/pix_screen.dart';
import 'package:flutter_application/Screens/SenhaScreen/senha.dart';
import 'package:flutter_application/Screens/splash/splashScreen.dart';
import 'package:sizer/sizer.dart';

class ListHome extends StatefulWidget {
  const ListHome({Key? key}) : super(key: key);


  @override
  _ListHomeState createState() => _ListHomeState();
}
class _ListHomeState extends State<ListHome> {

  static const cor_cartao =  Colors.deepPurpleAccent;
  @override
    Widget build(BuildContext context) {
      return Stack(
        children: [
              Padding(
                padding: const EdgeInsets.only(bottom:12.0),
                child: Container(
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
                  width:100.w ,
                  height: 100.h,
                ),
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:0,top: 20),
                child: Container(
                  width: 90.w,
                  height: 40.h,
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20) ),
                    child: ListView(
                            scrollDirection: Axis.horizontal ,
                            children: [
                              Row(
                                children: [
                                  Container(width: 10.w),
                                  Container(
                                    width: 60.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20)),
                                    
                                    child:Row(children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:[
                                          Padding(
                                            padding: const EdgeInsets.only(left:0.0),
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                  return GuardarDinheiro();
                                                }));
                                              },
                                              child: Container(
                                                width:60.w,
                                                child: Card(
                                                  child: ListTile(
                                                    title: Row(children: [
                                                      Icon(Icons.money,size: 18.sp,),
                                                      Text('Dinheiro guardado',style: TextStyle(fontSize: 14.sp),),
                                                    ],
                                                    ),
                                                    subtitle: Text(
                                                        'BRL 20.00',
                                                        style:TextStyle(fontSize: 20.sp) ,
                                                  ),
                                                )
                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:0.0),
                                            child: Container(
                                              width:60.w,
                                              height: 18.h,
                                              child: Card(
                                                  child: ListTile(
                                                    title: Row(children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:10.0),
                                                        child: Icon(Icons.credit_card_rounded,size: 18,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:10.0),
                                                        child: Text('Cartão de Crédito',style: TextStyle(fontSize: 14),),
                                                      ),
                                                    ],
                                                    ),
                                                    subtitle:Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Text('Fatura Atual',style: TextStyle(fontSize: 13),),
                                                                  Text('BRL 200.00',style: TextStyle(fontSize: 20,color: Colors.indigoAccent),),
                                                                  Text('Limite disponível: BRL 20.00',style: TextStyle(fontSize: 10),),
                                                                ],
                                                          ),
                                                          ),
                                                    ),
                                                  )
                                              ),


                                    ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:15.0),
                                        child: Container(width: 10.w,),
                                      ),
                                    ],
                                    )
                                  ),
                                  Container(width: 15.w,),
                                  Container(
                                    width: 300.w,
                                    height: 200.h,
                                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20)),
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left:5),
                                        child: Container(width: 10.w,),
                                      ),
                                      Center(
                                        child: Text(
                                          '     Investimentos',
                                          style:TextStyle(fontSize: 30) ,
                                        ),
                                      ),

                                    ],
                                    )
                                  ),
                                  Container(width: 30.w,),
                                ],
                              )
                            ],
                          )

                      ),
                    ),
              Container(
                width: 405.w,
                height: 100.h,
                child: ListView(
                  scrollDirection: Axis.horizontal ,
                  children: <Widget>[
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Container(
                        width: 120.w,
                        height: 80.h,
                        child:Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 80.h,
                          width: 110.w,
                            child:
                            InkWell(
                              onTap: (){
                                print('teste');
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return PixScreen();
                                }));
                                },
                              child: Container(
                                width: 150.w,
                                height: 100.h,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: cor_cartao,),
                                child: Center(
                                  child: Container(
                                    padding:const EdgeInsets.all(8.0),
                                    child: Text('Pix',style: TextStyle(color: Colors.white,fontSize: 16),),

                                  ),
                                ),
                              ),
                            ),
                        ),
                        ],
                        ),
                        ),
                    Container(
                      width: 120.w,
                      height: 80.h,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 80.h,
                            width: 110.w,
                                child:
                                InkWell(
                                  onTap: (){
                                    print('teste');
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return Senha();
                                    }));
                                    },
                                  child: Container(
                                    width: 150.w,
                                    height: 100.h,
                                    decoration: BoxDecoration(
                                        color: cor_cartao,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child:Center(
                                      child: Container(
                                        padding:const EdgeInsets.all(20.0),
                                        child: Text('Cartão de crédito',style: TextStyle(color: Colors.white,fontSize: 16),),
                                      ),
                                    ),
                                  ),
                                ),
                            ),
                        ],
                      ),
                    ),
                      Container(
                        width: 120.w,
                        height: 80.h,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 80.h,
                              width: 110.w,
                              child:
                              Container(
                                width: 150.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                    color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Container(
                                    padding:const EdgeInsets.all(8.0),
                                    child: Text('Pix',style: TextStyle(color: Colors.white,fontSize: 16),),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120.w,
                        height: 80.h,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 80.h,
                              width: 110.w,
                              child:
                              Container(
                                width: 150.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                    color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Container(
                                    padding:const EdgeInsets.all(8.0),
                                    child: Text('Pix',style: TextStyle(color: Colors.white,fontSize: 16),),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120.w,
                        height: 80.h,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 80.h,
                              width: 110.w,
                              child:
                              Container(
                                width: 150.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                   color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Container(
                                    padding:const EdgeInsets.all(8.0),
                                    child: Text('Pix',style: TextStyle(color: Colors.white,fontSize: 16),),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                  ],
                ),
                ],
                ),
              ),

              Container(width: 50.w,height: 20.h,),
            ],
          ),
        ],
      );
    }
  }
