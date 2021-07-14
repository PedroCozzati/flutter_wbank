import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Guardar/formGuardar.dart';
import 'package:flutter_application/Screens/Guardar/formInvestir.dart';
import 'package:flutter_application/components/guardar_dinheiro.dart';

class GuardarDinheiro extends StatefulWidget {
  const GuardarDinheiro({Key? key}) : super(key: key);

  @override
  _GuardarDinheiroState createState() => _GuardarDinheiroState();
}

class _GuardarDinheiroState extends State<GuardarDinheiro> {
  @override

  Widget build(BuildContext context) {
    final Guardar guardar;
    return Scaffold(appBar: AppBar(
        title: Text('Dinheiro guardado')
      ),
      body:  Container(
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
                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade300,Colors.indigo.shade300]),
                    ),
                    child: Column(children: [
                      Container(height: 20,),
                      Container(
                        width: 350,
                          height: 35,
                          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade50,Colors.indigo.shade50]),
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.indigo),
                          ),
                          child: Center(child: Text('Rendimento: 2%',style: TextStyle(color: Colors.purple,fontSize: 18,fontWeight: FontWeight.bold),)),
                      ),
                      Container(height: 50,),
                      Container(
                        width: 350,
                        height: 150,
                        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade50,Colors.indigo.shade50]),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: Colors.indigo),

                        ),
                        child: Center(child:
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'BRL ',
                                  style: TextStyle(
                                      fontSize:40,fontWeight: FontWeight.bold, color: Colors.blueGrey.shade900)),
                              TextSpan(
                                  text: '222500.00 ',
                                  style: TextStyle(fontSize: 40,color: Colors.blueAccent)),

                        ])),
                      )
                      )

                    ],
                    ),
                  ),
                ]
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Container(
                  width: 205,
                  height: 200,
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade50,Colors.indigo.shade50]),),
                  child: InkWell(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return FormGuardar();
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
                              Text('Resgatar',style: TextStyle(fontSize: 20),),
                              Center(child: Icon(Icons.attach_money,size: 50,color: Colors.blueGrey,),)
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
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade50,Colors.indigo.shade50]),),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return FormInvestir();
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
                              Text('Investir',style: TextStyle(fontSize: 20),),
                              Center(child: Icon(Icons.add_circle,size: 50,color: Colors.blueGrey,),)
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
