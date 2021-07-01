import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.indigo,Colors.purple])
          ),
          child:Center(
            child: Text("Bem vindo!",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),
            )
          ),
        ),
    );

  }
}