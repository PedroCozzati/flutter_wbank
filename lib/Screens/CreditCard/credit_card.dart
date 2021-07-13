import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Pix/ListTransferMain.dart';
import 'package:flutter_application/Screens/Pix/my_pix.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartão de crédito virtual'),
      ) ,
      body: Container(
          width: 430,
          height: 620,

          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100]),
          ),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 400,
                        height: 300,
                        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade400,Colors.indigo.shade400],),
                        ),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),gradient: LinearGradient(colors: [Colors.indigoAccent.shade400,Colors.indigo.shade600],),
                              ),
                              height: 190,
                              width: 350,
                              child: Container(
                                width: 350,
                                height: 190,
                                child:
                              Padding(
                                padding: const EdgeInsets.only(top:20.0,left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Icon(Icons.calculate_sharp,color: Colors.white,),
                                      Container(width: 240,),
                                      Icon(Icons.circle,color: Colors.red,),
                                      Container(width: 0,),
                                      Icon(Icons.circle,color: Colors.yellow.shade600,),
                                    ],),
                                    Container(height:70),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(text:' PEDRO H C CAMILLO\n\n',style: TextStyle(fontSize: 18,color: Colors.white)),
                                          TextSpan(text:' 3393 4342 4324 3423',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),

                                        ])),
                                ],
                                ),
                              ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Container(
                    width: 205,
                    height: 200,
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
                            width: 180,
                            height: 75,
                            child:Column(
                              children: [
                                Text('Apagar Cartão',style: TextStyle(fontSize: 20),),
                                Center(child: Icon(Icons.highlight_remove,size: 50,color: Colors.blueGrey,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 205,
                    height: 200,
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
                            width: 180,
                            height: 75,
                            child:Column(
                              children: [
                                Text('Bloquear Cartão',style: TextStyle(fontSize: 20),),
                                Center(child: Icon(Icons.remove_moderator,size: 50,color: Colors.blueGrey,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade300,Colors.indigo.shade300]),
                ),
              ),
            ],
          )
      ),
    );
  }
}
