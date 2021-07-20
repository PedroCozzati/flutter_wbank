import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Pix/formTransferir.dart';
import 'package:flutter_application/components/contacts.dart';
import 'package:flutter_application/components/transferencias.dart';
import 'package:sizer/sizer.dart';

class HistoricoPage extends StatelessWidget {
  final List<Transaction> transactions = [];

@override
  Widget build(BuildContext context) {
    transactions.add(Transaction(100.0, Contact(0,'Pedro',102)));
    return Scaffold(
      appBar: AppBar(
        title: Text("Histórico de Transferências"),
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        child: ListView.builder(
            itemBuilder: (context,index){
              final Transaction transaction = transactions[index];
              return Container(
                width: 50.sp,
                height: 70.sp,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text(transaction.value.toString(),style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                ),
              );
            },
          itemCount: transactions.length,
        ),
      ),
    );
}
}



