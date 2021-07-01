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
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('..........'),
          Container(
            width: 405,
            height: 150,
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
                              return ListAlunoMain();
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
      );
    }
  }
