// import 'package:flutter/material.dart';
// import 'package:flutter_application/Screens/PageForm/formTransfer.dart';
// import 'package:flutter_application/Screens/PageForm/formProfessor.dart';
// import 'package:flutter_application/components/contacts.dart';
//
// String salaL = 'Sala';
// String nomeL = 'nome';
// class PageProfessor extends StatefulWidget {
//   final List<Produtos> _formProfessor = List.empty(growable: true);
//
//   @override
//   State<StatefulWidget> createState() {
//     return PageProfessorState();
//   }
// }
//
// class PageProfessorState extends State<PageProfessor> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           itemCount:widget._formProfessor.length,
//           itemBuilder: (context, indice){
//             final formProfessor = widget._formProfessor[indice];
//             return ItensFormulario(formProfessor);
//           }
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(
//           Icons.add,
//         ),
//         onPressed: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context){
//             return FormProfessor();
//           })).then(
//                   (produtosAdd) => _atualizar(produtosAdd)
//           );
//         },
//       ),
//     );
//   }
//   void _atualizar(Produtos produtosAdd){
//     if(produtosAdd != null){
//       setState(() {
//         widget._formProfessor.add(produtosAdd);
//       });
//     }
//   }
// }
//
//
// class ItensFormulario extends StatelessWidget{
//   final Produtos _formProfessor;
//   ItensFormulario(this._formProfessor);
//
//   @override
//   Widget build(BuildContext context){
//     return Card(
//         child:ListTile(
//             leading:Icon(Icons.accessibility_new),
//             title: Text( _formProfessor.nome.toString()),
//             subtitle: Text(salaL +':'+_formProfessor.sala.toString()+'\nSituação:'+_formProfessor.situacao.toString(), style: TextStyle(fontSize: 11),
//             )
//         )
//     );
//   }
//
// }
//
//
