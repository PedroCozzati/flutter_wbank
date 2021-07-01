
import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/PageForm/formAluno.dart';
import 'package:flutter_application/Screens/home/appbar.dart';
import 'package:flutter_application/Screens/home/list.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _AddNovoAluno() {
    setState(() {
      //inputBox para inserir aluno
      //atualizar lista de alunos cadastrados;
    });
  }

  void _RemoverAluno(){
    setState(() {
      //selecionar aluno para remover da lista
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBarWidget(
      ),
      body: ListHome(),

    );
  }
}
