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
            Text('Chave: 11977748028')
          ],
        ),
      ),
    );
  }
}
