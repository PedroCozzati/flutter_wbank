import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Pix/ListTransferMain.dart';

import 'my_pix.dart';

class PixScreen extends StatelessWidget {
  const PixScreen({Key? key}) : super(key: key);

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
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade300,Colors.indigo.shade300]),
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
                              Text('Sua chave Pix',style: TextStyle(fontSize: 20),),
                              Center(child: Icon(Icons.vpn_key_rounded,size: 50,color: Colors.blueGrey,),)
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
