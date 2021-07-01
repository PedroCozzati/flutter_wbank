import 'package:flutter/material.dart';
import 'package:flutter_application/components/formProdutos.dart';
import 'package:flutter_application/database/app_database.dart';

import 'listaTransfer.dart';


class ListTransfer extends StatelessWidget {
    final List<Produtos> contacts = [];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
          title: Text("Transferências"),
      ),
      body: FutureBuilder<List<Produtos>>(
          future: Future.delayed(Duration(seconds: 1)).then((value)=>findAll()),
          builder: (context,snapshot){
            final List<Produtos>? contacts = snapshot.data;
            if (contacts != null){
              return ListView.builder(
                itemBuilder: (context, index){
                  final Produtos contact = contacts[index];
                  return _ContactItem(contact);
                },
              itemCount: contacts.length,
            );
            }
            return Container(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        )
      );
  }
}

class _ContactItem extends StatelessWidget {
  final Produtos contact;
  _ContactItem(this.contact);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contact.name,
          style: TextStyle(
            fontSize: 24
          ),
        ),
        subtitle: Text(
          contact.conta.toString(),
          style: TextStyle(
            fontSize: 16
          ),
        ),
      ),
    );
  }
}


