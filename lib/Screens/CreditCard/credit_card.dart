import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Pix/ListTransferMain.dart';
import 'package:flutter_application/Screens/Pix/my_pix.dart';
import 'package:flutter_application/Screens/home/homePage.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  String nome = 'PEDRO H C CAMILLO';
  String numero =  '4324 4234 6546 9334';
  LinearGradient corCartao = LinearGradient(colors: [Colors.indigoAccent.shade400,Colors.indigo.shade600]) ;
  void _showDialog(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Tem certeza?'),
        content: RichText(
            text: TextSpan(children: [
              TextSpan(text:'Ao clicar o cartão sera apagado',style: TextStyle(color: Colors.black54,fontSize: 16)),
            ],
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:35.0),
            child: ElevatedButton(onPressed: (){
              setState(() {
                nome = 'Criar cartão virtual';
                numero = '';
              });
              Navigator.pop(context);
            }, child: Text('Ok')),
          ),
          Padding(
            padding: const EdgeInsets.only(right:50.0),
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Voltar')),
          )
        ],
      );
    });
  }
  void _novoCard(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(

        title: Text('Cartão virtual gerado'),
        content: Text(':)'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:100.0),
            child: ElevatedButton(
              child: Text('OK'),
              onPressed: (){
              setState(() {
                nome = 'PEDRO H C CAMILLO';
                numero = '3254 7676 3456 6544';

              });

              Navigator.pop(context);
            },

          ),
          ),
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              color: Colors.deepPurpleAccent,
              padding: EdgeInsets.only(top: 20),
              height: 80,
              width: 420,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_outlined), onPressed:(){  Navigator.push(context, MaterialPageRoute(builder: (context){
                      return MyHomePage();
                    }));}),
                    Text('      Cartão de crédito virtual  ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
          ),
          ),
          Container(
              width: 430,
              height: 590,
              decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
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
                            decoration: BoxDecoration(gradient:  LinearGradient(colors:  [Colors.purple.shade300,Colors.indigo.shade300]),),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),gradient: corCartao,
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
                                          ],
                                          ),
                                          Container(height:70),
                                          Row(
                                            children: [
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(text:' '+nome+"\n\n",style: TextStyle(fontSize: 18,color: Colors.white)),
                                                    TextSpan(text:' '+numero,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),

                                                  ])),
                                              Padding(
                                                padding: const EdgeInsets.only(left:30.0,top: 10),
                                                child: IconButton(icon: Icon(Icons.copy), onPressed: (){}),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10),
                                                child: IconButton(icon: Icon(Icons.remove_moderator), onPressed: (){
                                                  setState(() {
                                                    corCartao = LinearGradient(colors: [Colors.blueGrey,Colors.black]);
                                                  });
                                                  setState(() {
                                                    corCartao = LinearGradient(colors: [Colors.indigoAccent.shade400,Colors.indigo.shade600]);
                                                  });


                                                }),
                                              )
                                            ],
                                          ),
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
                          onTap: () {
                            if(numero == ''){
                              FutureBuilder(builder: (context, snapshot) {
                                return Container();
                              });
                            }
                            else {
                              FutureBuilder(builder: (context, snapshot) {
                                return Container();
                              },
                                future: Future.delayed(Duration(seconds: 1))
                                    .then((value) => _showDialog()),);
                            }
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
                            if(numero != ''){
                              FutureBuilder(builder: (context, snapshot) {
                                return Container();
                              });
                            }
                            else {
                              FutureBuilder(builder: (context, snapshot) {
                                return Container();
                              },
                                future: Future.delayed(Duration(milliseconds: 2))
                                    .then((value) => _novoCard()),);

                              setState(() {
                                nome = 'PEDRO H C CAMILLO';
                                numero = '3254 7676 3456 6544';

                              });
                            }
                          },
                          child: Card(
                            color: Colors.white,
                            child: Center(
                              child: Container(
                                width: 180,
                                height: 75,
                                child:Column(
                                  children: [
                                    Text('Criar novo cartão',style: TextStyle(fontSize: 20),),
                                    Center(child: Icon(Icons.credit_card_rounded,size: 50,color: Colors.blueGrey,),)
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
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade300,Colors.indigo.shade300]),
                    ),
                  ),
                ],
              )
          ),
      ],)
      ),
    );
  }
}
