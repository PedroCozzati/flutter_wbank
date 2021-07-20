import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/TransferForm/formTransfer.dart';
import 'package:flutter_application/components/contacts.dart';
import 'package:flutter_application/database/dao/contact_dao.dart';

String salaL = 'sala';
String nomeL = 'nome';
class PageAluno extends StatefulWidget {
  final List<Contact> _formAluno = List.empty(growable: true);

  @override
  State<StatefulWidget> createState() {
    return PageAlunoState();
  }
}

  class PageAlunoState extends State<PageAluno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(
    itemCount:widget._formAluno.length,
    itemBuilder: (context, indice){
      final formAluno = widget._formAluno[indice];
      return ItensFormulario(formAluno);
    }
    ),
        floatingActionButton: FloatingActionButton(
        child: Icon(
        Icons.add,
        ),
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return FormContatos();
            })).then(
              (produtosAdd) => _atualizar(produtosAdd)
            );
            },
        ),
    );
  }
  void _atualizar(Contact produtosAdd){
    if(produtosAdd != null){
      setState(() {
        widget._formAluno.add(produtosAdd);
      });
    }
  }
}

class ItensFormulario extends StatelessWidget{
  final Contact _formAluno;
  ItensFormulario(this._formAluno);

  @override
  Widget build(BuildContext context){
    return Card(
      child:ListTile(
        leading:Icon(Icons.person),
        title: Text( _formAluno.name.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text(_formAluno.conta.toString(), style: TextStyle(fontSize: 15,color: Colors.black),
        )
      )
    );
  }
}




