// import 'package:flutter/material.dart';
// import 'package:flutter_application/Screens/PageForm/formTransfer.dart';
// import 'package:flutter_application/components/contacts.dart';
// import 'package:flutter_application/components/guardar_dinheiro.dart';
// import 'package:flutter_application/database/app_database.dart';
// import 'package:flutter_application/database/dao/contact_dao.dart';
//
//
//
// class ListGuardar extends StatefulWidget {
//   final List<Guardar> guardar = [];
//
//
//   @override
//   _ListGuardarState createState() => _ListGuardarState();
//
// }
// class _ListGuardarState extends State<ListGuardar> {
//   //final Guardar =createDatabase();
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Transferências"),
//       ),
//       body: Column(children: [
//         Card(
//           child: ListTile(
//             onTap: (){
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                     builder: (context) => FormAluno()
//                 ),
//               ).then((value) => setState((){}));
//             },
//             title: Row(
//               children: [
//                 Icon(Icons.person),
//                 Text(' '+
//                     'Adicionar Chave Pix',
//                   style: TextStyle(
//                       fontSize: 21
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Container(
//           width: 400,
//           height: 538,
//           child:FutureBuilder<List<Contact>>(
//               future: Future.delayed(Duration(seconds: 1)).then((value)=>_dao.findAll()),
//               builder: (context,snapshot){
//                 final List<Contact>? contacts = snapshot.data;
//                 if (contacts != null){
//                   return ListView.builder(
//                     itemBuilder: (context, index){
//                       final Contact contact = contacts[index];
//                       return _ContactItem(contact);
//                     },
//                     itemCount: contacts.length,
//                   );
//                 }
//                 return Container(
//                   child: Center(child: CircularProgressIndicator()),
//                 );
//               }
//           ),
//         ),
//       ],
//       ),
//
//     );
//   }
// }

// class _ContactItem extends StatelessWidget {
//   final Contact contact;
//   _ContactItem(this.contact);
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         onTap: (){
//           //tela confirmação pix
//         },
//         title: Row(
//           children: [
//             Icon(Icons.person),
//             Text(' '+
//                 contact.name,
//               style: TextStyle(
//                   fontSize: 21
//               ),
//             ),
//           ],
//         ),
//         subtitle: Text(
//           contact.conta.toString(),
//           style: TextStyle(
//               fontSize: 14
//           ),
//         ),
//       ),
//     );
//   }
// }


