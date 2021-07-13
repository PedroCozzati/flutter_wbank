import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/CreditCard/credit_card.dart';

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
      appBar: AppBar(
        title: Text('Pix'),
      ) ,
      body: Container(
          width: 430,
          height: 620,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100]),
          ),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(color: Colors.white60,height: 100,width: 400,),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 400,
                        height: 400,
                        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade400,Colors.indigo.shade400],),
                        ),
                        child: Text('Digite sua senha para continuar'), ),
                  ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    width: 300,
                    height: 100,
                    child: InkWell(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return CreditCard();
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
                                Text('Transferir',style: TextStyle(fontSize: 20),),
                                Center(child: Icon(Icons.attach_money,size: 50,color: Colors.blueGrey,),)
                              ],
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
      )
    );
  }
}

