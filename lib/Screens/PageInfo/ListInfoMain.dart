import 'package:flutter/material.dart';

import 'package:flutter_application/Screens/PageInfo/ListaInfo.dart';
import 'package:flutter_application/Screens/PageProfessor/ListaProfessor.dart';

class ListInfoMain extends StatelessWidget {
  const ListInfoMain({Key? key}) : super(key: key);

    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
          title: Text("Informações"),
      ),
      body: PageInfo()
      );
  }
}
