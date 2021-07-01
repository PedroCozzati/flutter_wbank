import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/PageForm/enumCheckBox.dart';
import 'package:flutter_application/components/formProdutos.dart';

class FormAluno extends StatefulWidget {
  @override
  FormAlunoState createState() => FormAlunoState();
}

class FormAlunoState extends State<FormAluno> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorConta = TextEditingController();
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
            // Row(
            //   children: <Widget>[
            //        Text("\nRetido"),
            //
            //        Checkbox(
            //          checkColor: Colors.white,
            //            value: checkBox1,
            //            onChanged: (value) {
            //            setState(() {
            //              checkBox1 = value!;
            //              if (checkBox1 == value){
            //                print("retido");
            //                checkBox2 = false;
            //                situacao = 'retido';
            //              }
            //           });
            //          },
            //
            //
            //         ),
            //
            //         Text("\nAprovado"),
            //         Checkbox(
            //            checkColor: Colors.white,
            //            value: checkBox2,
            //            onChanged: (value) {
            //            setState(() {
            //              checkBox2 = value!;
            //
            //              if (checkBox2 == value){
            //                print("aprovado");
            //                checkBox1 = false;
            //                situacao = 'aprovado';
            //              }
            //
            //
            //       });
            //     },
            //   ),
            //
            // ],
            // ),


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
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Cadastro concluído')));
      final cadastroCompleto = Produtos(0,nome,conta );
      Navigator.pop(context, cadastroCompleto);
    }
  }
}
