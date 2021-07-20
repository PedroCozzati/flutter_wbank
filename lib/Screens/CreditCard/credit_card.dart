import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Pix/ListTransferMain.dart';
import 'package:flutter_application/Screens/Pix/my_pix.dart';
import 'package:flutter_application/Screens/home/homePage.dart';
import 'package:sizer/sizer.dart';

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
              padding: EdgeInsets.only(top: 10.sp),
              height: 40.sp,
              width: 100.w,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_outlined,size: 15.sp,), onPressed:(){  Navigator.push(context, MaterialPageRoute(builder: (context){
                      return MyHomePage();
                    }));}),
                    Text('      Cartão de crédito virtual  ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14.sp),)
                  ],
          ),
          ),
          Container(
              width: 300.sp,
              height: 400 .sp,
              decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
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
                            decoration: BoxDecoration(gradient:  LinearGradient(colors:  [Colors.purple.shade300,Colors.indigo.shade300]),),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),gradient: corCartao,
                                  ),
                                  height: 120.sp,
                                  width: 200.sp,
                                  child: Container(
                                    width: 190,
                                    height: 110,
                                    child:
                                    Padding(
                                      padding:  EdgeInsets.only(top:10.sp,left:10.sp),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Icon(Icons.calculate_sharp,color: Colors.white,size: 15.sp,),
                                            Container(width: 120.sp,),
                                            Icon(Icons.circle,color: Colors.red,size: 15.sp,),
                                            Container(width: 0.sp,),
                                            Icon(Icons.circle,color: Colors.yellow.shade600,size: 15.sp,),
                                          ],
                                          ),
                                          Container(height:40.sp),
                                          Row(
                                            children: [
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(text:' '+nome+"\n\n",style: TextStyle(fontSize: 10.sp,color: Colors.white)),
                                                    TextSpan(text:' '+numero,style: TextStyle(fontSize: 10.sp,color: Colors.white,fontWeight: FontWeight.bold)),

                                                  ])),
                                              Padding(
                                                padding:  EdgeInsets.only(left:15.sp,top: 10.sp),
                                                child: IconButton(icon: Icon(Icons.copy,size: 15.sp,), onPressed: (){}),
                                              ),
                                              Padding(
                                                padding:EdgeInsets.only(top: 10.sp),
                                                child: IconButton(icon: Icon(Icons.remove_moderator,size: 15.sp,), onPressed: (){
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
                        width:150.sp,
                        height: 150.sp,
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
                                width:150.sp,
                                height: 150.sp,
                                child:Column(
                                  children: [
                                    Padding(padding:EdgeInsets.only(top:50.sp),child: Text('Apagar Cartão',style: TextStyle(fontSize: 15.sp),)),
                                    Center(child: Icon(Icons.highlight_remove,size: 50,color: Colors.blueGrey,),)
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
                                width:150.sp,
                                height: 150.sp,
                                child:Column(
                                  children: [
                                    Padding(padding:EdgeInsets.only(top:50.sp),child: Text('Criar novo cartão',style: TextStyle(fontSize: 15.sp),)),
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
                ],
              )
          ),
      ],)
      ),
    );
  }
}
