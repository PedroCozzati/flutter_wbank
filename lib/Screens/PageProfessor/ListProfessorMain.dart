import 'package:flutter/material.dart';

import 'package:flutter_application/Screens/PageProfessor/ListaProfessor.dart';

class ListProfessorMain extends StatelessWidget {
  const ListProfessorMain({Key? key}) : super(key: key);

    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
          title: Text("Lista de Professores"),
      ),
      body: PageProfessor()
      );
  }
}
