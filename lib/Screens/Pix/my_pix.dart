import 'package:flutter/material.dart';

class MyPix extends StatelessWidget {
  const MyPix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chave Pix'),
      ),
      body: Container(
        child: Column(
          children: [
            Card(child: Container(
              height:100,
              width:400 ,
              child: Icon(Icons.vpn_key_outlined,size: 90,),)),
            Card(
              child: ListTile(
              title:Center(child: Text('Sua chave: 11977748028'))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
