import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/PageForm/enumCheckBox.dart';
import 'package:flutter_application/components/contacts.dart';
import 'package:flutter_application/database/app_database.dart';
import 'package:flutter_application/database/dao/contact_dao.dart';

class FormGuardar extends StatefulWidget {
  @override
  FormGuardarState createState() => FormGuardarState();
}

class FormGuardarState extends State<FormGuardar> {
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
        title: Text("Quanto deseja resgatar"),
    ),
    body: Padding(
    padding: const EdgeInsets.all(10.0),
      child:Form(
      key: _formKey,

      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _controladorNome,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Digite a quantidade'

            ),
            validator: (nomeCadastrado){
              if (nomeCadastrado==null||nomeCadastrado.isEmpty){
                return "Digite uma quantidade";
              }
              listaCadastro.add(nomeCadastrado);

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
                child: Text('Resgatar',style: TextStyle(fontSize: 17),)
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
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Dinheiro Resgatado')));
      _dao.save(newContact).then((id)=>Navigator.pop(context));
    }
  }
}
