import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application/Screens/PageInfo/ListInfoMain.dart';
import 'package:flutter_application/Screens/PageProfessor/ListProfessorMain.dart';
import 'package:flutter_application/Screens/Transferencias/ListTransferMain.dart';

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
                padding: const EdgeInsets.only(bottom:1.0),
                child: Container(
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
                  width:420 ,
                  height: 450,
                ),
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:7.0,bottom: 15),
                child: Container(
                  width: 375,
                  height: 250,
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20) ),
                    child: ListView(
                            scrollDirection: Axis.horizontal ,
                            children: [
                              Row(
                                children: [
                                  Container(width: 30),
                                  Container(
                                    width: 300,
                                    height: 200,
                                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20)),
                                    child:Row(children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:[
                                          Padding(
                                            padding: const EdgeInsets.only(left:35.0),
                                            child: Container(
                                              width:238,
                                              child: Card(
                                                child: ListTile(
                                                  title: Row(children: [
                                                    Icon(Icons.money,size: 18,),
                                                    Text('Dinheiro guardado',style: TextStyle(fontSize: 14),),
                                                  ],
                                                  ),
                                                  subtitle: Text(
                                                      'BRL 20.00',
                                                      style:TextStyle(fontSize: 20) ,
                                                ),
                                              )
                                        ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:35.0),
                                            child: Container(
                                              width:238,
                                              height: 100,
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
                                        child: Container(width: 10,),
                                      ),
                                    ],
                                    )
                                  ),
                                  Container(width: 15,),
                                  Container(
                                    width: 300,
                                    height: 200,
                                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20)),
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left:5),
                                        child: Container(width: 10,),
                                      ),
                                      Center(
                                        child: Text(
                                          'Cartão de crédito',
                                          style:TextStyle(fontSize: 30) ,
                                        ),
                                      ),

                                    ],
                                    )
                                  ),
                                  Container(width: 30,),
                                ],
                              )
                            ],
                          )

                      ),
                    ),
              Container(
                width: 405,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal ,
                  children: <Widget>[
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Container(
                        width: 120,
                        height: 80,
                        child:Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 80,
                          width: 110,
                            child:
                            InkWell(
                              onTap: (){
                                print('teste');
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return ListTransfer();
                                }));
                                },
                              child: Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: cor_cartao,),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Transferências',style: TextStyle(color: Colors.white,fontSize: 14),),
                                ),
                              ),
                            ),
                        ),
                        ],
                        ),
                        ),
                    Container(
                      width: 120,
                      height: 80,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 80,
                            width: 110,
                                child:
                                Container(
                                  width: 150,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Cartão',style: TextStyle(color: Colors.white,fontSize: 14),),
                                  ),
                                ),
                            ),
                        ],
                      ),
                    ),
                      Container(
                        width: 120,
                        height: 80,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 80,
                              width: 110,
                              child:
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Cartão',style: TextStyle(color: Colors.white,fontSize: 14),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 80,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 80,
                              width: 110,
                              child:
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Cartão',style: TextStyle(color: Colors.white,fontSize: 14),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 80,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 80,
                              width: 110,
                              child:
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                   color: cor_cartao,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Cartão',style: TextStyle(color: Colors.white,fontSize: 14),),
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

              Container(width: 50,height: 20,),
            ],
          ),
        ],
      );
    }
  }
