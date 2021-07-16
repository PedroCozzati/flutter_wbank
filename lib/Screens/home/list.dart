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
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
                  Padding(
                    padding: EdgeInsets.only(bottom:0.sp),
                    child: Container(
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
                      width:500.w ,
                      height: 200.sp,
                    ),
                  ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:0,top: 0),
                    child: Center(
                      child: Container(
                        width: 90.w,
                        height: 180.sp,
                        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20) ),
                          child: ListView(
                                  scrollDirection: Axis.horizontal ,
                                  children: [
                                    Row(
                                      children: [
                                        Container(width: 25.sp),
                                        Container(
                                          width: 230.sp,
                                          height: 180.sp,
                                          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20)),

                                          child:Row(
                                            children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children:[
                                             // Navigator.push(context, MaterialPageRoute(builder: (context){
                                             //  return GuardarDinheiro();
                                                Padding(
                                                    padding:  EdgeInsets.only(left:15.sp),
                                                    child: InkWell(
                                                      onTap: (){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                                          return GuardarDinheiro();
                                                          })
                                                        );
                                                      },
                                                      child: Container(
                                                        width:180.sp,
                                                        height: 70.sp,
                                                        child: Card(
                                                          child: ListTile(
                                                            title: Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets.only(top:5.sp),
                                                                  child: Icon(Icons.credit_card_rounded,size: 15.sp,),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets.only(top:5.sp),
                                                                  child: Text('Dinheiro guardado',style: TextStyle(fontSize: 14.sp),),
                                                                ),
                                                              ],
                                                            ),
                                                            subtitle:Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text('BRL 20.00',style: TextStyle(fontSize: 17.sp,color: Colors.indigoAccent),),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                ),


                                                Padding(
                                                  padding:  EdgeInsets.only(left:15.sp),
                                                  child: Container(
                                                    width:180.sp,
                                                    height: 90.sp,
                                                    child: Card(
                                                        child: ListTile(
                                                          title: Row(
                                                            children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(top:5.sp),
                                                              child: Icon(Icons.credit_card_rounded,size: 15.sp,),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(top:5.sp),
                                                              child: Text('Cartão de Crédito',style: TextStyle(fontSize: 14.sp),),
                                                            ),
                                                          ],
                                                          ),
                                                          subtitle:Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Text('Fatura Atual',style: TextStyle(fontSize: 12.sp),),
                                                                        Text('BRL 200.00',style: TextStyle(fontSize: 17.sp,color: Colors.indigoAccent),),
                                                                        Text('Limite disponível: BRL 20.00',style: TextStyle(fontSize: 9.sp),),
                                                                      ],
                                                                ),
                                                                ),
                                                          ),
                                                        )
                                                    ),


                                          ],
                                            ),

                                          ],
                                          )
                                        ),
                                        Container(width:0.sp,),
                                        Container(
                                          width: 250.sp,
                                          height: 180.sp,
                                          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20)),
                                          child: Row(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:5),
                                              child: Container(width: 10.sp,),
                                            ),
                                            Center(
                                              child: Text(
                                                '     Investimentos',
                                                style:TextStyle(fontSize: 30.sp) ,
                                              ),
                                            ),

                                          ],
                                          )
                                        ),
                                        Container(width: 5.sp,),
                                      ],
                                    )
                                  ],
                                )

                            ),
                    ),
                        ),



                ],
              ),
            ],
          ),
          SizedBox(
            child: Container(
              width: 270.sp,
              height: 80.sp,
              child: ListView(
                scrollDirection: Axis.horizontal ,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
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
                                    return PixScreen();
                                  }));
                                },
                                child: Container(
                                  width: 80.sp,
                                  height: 70.sp,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: cor_cartao,),
                                  child: Center(
                                    child: Container(
                                      padding:const EdgeInsets.all(8.0),
                                      child: Text('Pix',style: TextStyle(color: Colors.white,fontSize: 12.sp),),

                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width:100.sp,
                        height: 70.sp,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:80.sp,
                              height: 70.sp,
                              child:
                              InkWell(
                                onTap: (){
                                  print('teste');
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return Senha();
                                  }));
                                },
                                child: Container(
                                  width:80.sp,
                                  height: 70.sp,
                                  decoration: BoxDecoration(
                                      color: cor_cartao,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child:Center(
                                    child: Container(
                                      padding:const EdgeInsets.all(20.0),
                                      child: Text('Cartão de crédito',style: TextStyle(color: Colors.white,fontSize: 10.sp),),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width:80.sp,
                        height: 70.sp,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:80.sp,
                              height: 70.sp,
                              child:
                              Container(
                                width:80.sp,
                                height: 70.sp,
                                decoration: BoxDecoration(
                                    color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Container(
                                    padding:const EdgeInsets.all(8.0),
                                    child: Text('Pix',style: TextStyle(color: Colors.white,fontSize: 12.sp),),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width:100.sp,
                        height: 70.sp,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:80.sp,
                              height: 70.sp,
                              child:
                              Container(
                                width:80.sp,
                                height: 70.sp,
                                decoration: BoxDecoration(
                                    color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Container(
                                    padding:const EdgeInsets.all(8.0),
                                    child: Text('Pix',style: TextStyle(color: Colors.white,fontSize: 12.sp),),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width:80.sp,
                        height: 70.sp,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:80.sp,
                              height: 70.sp,
                              child:
                              Container(
                                width:80.sp,
                                height: 70.sp,
                                decoration: BoxDecoration(
                                    color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Container(
                                    padding:const EdgeInsets.all(8.0),
                                    child: Text('Pix',style: TextStyle(color: Colors.white,fontSize: 12.sp),),
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
          ),
        ],
      );
    }
  }
