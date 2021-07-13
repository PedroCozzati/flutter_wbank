import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/PageForm/formTransfer.dart';
import 'package:flutter_application/Screens/Pix/formTransferir.dart';
import 'package:flutter_application/components/contacts.dart';
import 'package:flutter_application/database/app_database.dart';
import 'package:flutter_application/database/dao/contact_dao.dart';

import 'listaTransfer.dart';


class ListTransfer extends StatefulWidget {
    final List<Contact> contacts = [];


    @override
    _ListTransferState createState() => _ListTransferState();

}
  class _ListTransferState extends State<ListTransfer> {
    final ContactDao _dao = ContactDao();
    @override
    Widget build(BuildContext context) {

      return Scaffold(
          appBar: AppBar(
          title: Text("Transferências"),
      ),
      body: Column(children: [
      Card(
      child: ListTile(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => FormAluno()
          ),
        ).then((value) => setState((){}));
      },
        title: Row(
          children: [
            Icon(Icons.person),
            Text(' '+
                'Adicionar Chave Pix',
              style: TextStyle(
                  fontSize: 21
              ),
            ),
          ],
        ),
      ),
      ),
        Container(
          width: 400,
          height: 538,
          child:FutureBuilder<List<Contact>>(
              future: Future.delayed(Duration(seconds: 1)).then((value)=>_dao.findAll()),
              builder: (context,snapshot){
                final List<Contact>? contacts = snapshot.data;
                if (contacts != null){
                  return ListView.builder(
                    itemBuilder: (context, index){
                      final Contact contact = contacts[index];
                      return ContactItem(contact);
                    },
                    itemCount: contacts.length,
                  );
                }
                return Container(
                  child: Center(child: CircularProgressIndicator()),
                );
              }
          ),
        ),
      ],
      ),

      );
  }
}

class ContactItem extends StatelessWidget {
  final Contact contact;
  ContactItem(this.contact);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return FormTransferir('');
          }));
      },
        title: Row(
          children: [
            Icon(Icons.person),
            Text(' '+
              contact.name,
              style: TextStyle(
                fontSize: 21
              ),
            ),
          ],
        ),
        subtitle: Text(
          contact.conta.toString(),
          style: TextStyle(
            fontSize: 14
          ),
        ),
      ),
    );
  }
}


