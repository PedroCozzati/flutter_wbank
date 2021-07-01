import 'package:flutter/material.dart';

import 'listaTransfer.dart';


class ListAlunoMain extends StatelessWidget {
  const ListAlunoMain({Key? key}) : super(key: key);

    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
          title: Text("Transferências"),
      ),
      body: PageAluno()
      );
  }
}
