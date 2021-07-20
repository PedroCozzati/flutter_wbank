import 'package:flutter/material.dart';

import 'package:flutter_application/components/contacts.dart';

import 'package:flutter_application/database/dao/contact_dao.dart';

class FormTransferir extends StatefulWidget {
  const FormTransferir(this.nomeP);
  final String nomeP;

  String get teste => nomeP;
  @override
  FormTransferirState createState() => FormTransferirState(nomeP);
}

class FormTransferirState extends State<FormTransferir> {
  FormTransferirState (this.teste);
  final String teste;

  final _formKey = GlobalKey<FormState>();
  TextEditingController _controladorNome = TextEditingController();
  TextEditingController _controladorConta = TextEditingController();
  final ContactDao _dao = ContactDao();
  bool checkBox1 =false;
  bool checkBox2 = false;
  String situacao = 'null';
  List listaCadastro = [];
  late String nome;
  late int conta;
  late List contact;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quanto deseja transferir"),
    ),
    body: Padding(
    padding: const EdgeInsets.all(10.0),
      child:Form(
      key: _formKey,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _controladorConta ,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Digite a quantidade'

            ),
            validator: (contaCadastrado){
              if (contaCadastrado==null||contaCadastrado.isEmpty){
                return "Digite uma quantidade";
              }
              listaCadastro.add(contaCadastrado);

            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed:(){
                  if (_controladorConta.text == ''){
                    _controladorConta.text = '1';
                  }
                  else {
                    int i = int.tryParse(_controladorConta.text)! + 1;
                    _controladorConta.text = i.toString();
                  }
                } ,
                child: Text('1'),
              ),
              ElevatedButton(
                onPressed: (){
                  if (_controladorConta.text == ''){
                    _controladorConta.text = '10';
                  }
                  else {
                    int i = int.tryParse(_controladorConta.text)! + 10;
                    _controladorConta.text = i.toString();
                  }
                },
                child: Text('10'),
              ),
              ElevatedButton(
                onPressed: (){
                  if (_controladorConta.text == ''){
                    _controladorConta.text = '50';
                  }
                  else {
                    int i = int.tryParse(_controladorConta.text)! + 50;
                    _controladorConta.text = i.toString();
                  }
                },
                child: Text('50'),
              ),
              ElevatedButton(
                onPressed: (){
                  if (_controladorConta.text == ''){
                    _controladorConta.text = '100';
                  }
                  else {
                    int i = int.tryParse(_controladorConta.text)! + 100;
                    _controladorConta.text = i.toString();
                  }
                },
                child: Text('100'),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child:
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  _showDialog();
                },
                child: Text('Transferir',style: TextStyle(fontSize: 17),)
          ),
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text('Dados bancários',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                  Container(height: 5,),
                  RichText(
                    text: TextSpan(children: [
                        TextSpan(text:'  Nome:',style: TextStyle(fontSize: 20,color: Colors.black)),
                        WidgetSpan(child:Container(
                          width: 305,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(widget.teste,style: TextStyle(fontSize: 20,color: Colors.black,)),
                            ],
                          ),
                        )),
                    ])),
                  Container(height: 5,),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(text:'  Conta:',style: TextStyle(fontSize: 20,color: Colors.black)),
                        WidgetSpan(child:Container(
                          width: 320,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('3453494444444444990',style: TextStyle(fontSize: 20,color: Colors.black,)),
                            ],
                          ),
                        )),
                      ])),
                  Container(height: 5,),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(text:'  CPF:',style: TextStyle(fontSize: 20,color: Colors.black)),
                        WidgetSpan(child:Container(
                          width: 335,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('435645744796',style: TextStyle(fontSize: 20,color: Colors.black,)),
                            ],
                          ),
                        )),
                      ])),
                  Container(height: 5,),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(text:'  RG:',style: TextStyle(fontSize: 20,color: Colors.black)),
                        WidgetSpan(child:Container(
                          width: 345,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('235447896',style: TextStyle(fontSize: 20,color: Colors.black,)),
                            ],
                          ),
                        )),
                      ])),
                ],
              ),
            ),
          )

        ],
      ),
    ),
    ),
    );
  }

  void _showDialog(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Tem certeza?'),
        content: RichText(
            text: TextSpan(children: [
              TextSpan(text:'Ao clicar a transferência será realizada',style: TextStyle(color: Colors.black54,fontSize: 16)),
              WidgetSpan(child:Container(
                width: 200,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(child: Text('Valor: BRL ${_controladorConta.text}',style: TextStyle(fontSize: 20,color: Colors.indigoAccent,))),
                  ],
                ),
              )),
            ])),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:80.0),
            child: ElevatedButton(onPressed: (){_criarCadastro(context);Navigator.of(context).pop();Navigator.of(context).pop();}, child: Text('ok')),
          ),
          Padding(
            padding: const EdgeInsets.only(right:45.0),
            child: ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('voltar')),

          )

        ],

      );
    });
  }
  void _criarCadastro(BuildContext context){

    final String nome = _controladorNome.text;
    int conta = int.tryParse(_controladorConta.text)!;
    final Contact newContact = Contact(0, nome, conta);
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Transferência concluída')));

    }
  }


}
