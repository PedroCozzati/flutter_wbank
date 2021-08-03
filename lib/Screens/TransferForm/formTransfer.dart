import 'package:flutter/material.dart';

import 'package:flutter_application/Screens/Pix/formTransferir.dart';
import 'package:flutter_application/components/contacts.dart';
import 'package:flutter_application/database/app_database.dart';
import 'package:flutter_application/database/dao/contact_dao.dart';

class FormContatos extends StatefulWidget {
  @override
  FormContatosState createState() => FormContatosState();
}

class FormContatosState extends State<FormContatos> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorConta = TextEditingController();
  final ContactDao _dao = ContactDao();
  bool checkBox1 =false;
  bool checkBox2 = false;
  String situacao = 'null';
  List listaCadastro = new List.filled(0, null, growable:true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
    ),
    body: Padding(
    padding: const EdgeInsets.all(10.0),
      child:Form(
      key: _formKey,

      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _controladorNome,
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Digite o nome'

            ),
            validator: (nomeCadastrado){
              if (nomeCadastrado==null||nomeCadastrado.isEmpty){
                return "Digite um nome";
              }
              listaCadastro.add(nomeCadastrado);

            },
          ),
          TextFormField(
            controller: _controladorConta,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Digite o número da conta'
            ),
            validator: (contaCadastrada){
              if (contaCadastrada==null||contaCadastrada.isEmpty){
                return "Digite um número de conta existente";
              }

              listaCadastro.add(contaCadastrada);

            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child:
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  _criarCadastro(context);
                },
                child: Text('Create',style: TextStyle(fontSize: 17),)
          ),
            ),
          ),
        ],
      ),
    ),
    ),
    );
  }
  void _criarCadastro(BuildContext context){
    final String nome = _controladorNome.text;
    final int conta = int.tryParse(_controladorConta.text)!;
    final Contact newContact = Contact(0, nome, conta);
    FormTransferir(nome,conta);
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Conta adicionada')));
      _dao.save(newContact).then((id)=>Navigator.pop(context));

    }
  }
}
