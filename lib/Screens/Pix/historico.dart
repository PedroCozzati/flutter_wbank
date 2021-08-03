import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Pix/formTransferir.dart';
import 'package:flutter_application/Screens/Pix/pix_screen.dart';
import 'package:flutter_application/components/contacts.dart';
import 'package:flutter_application/components/transferencias.dart';
import 'package:flutter_application/http/web_client.dart';
import 'package:flutter_application/widgets/progressBar.dart';
import 'package:sizer/sizer.dart';

class HistoricoPage extends StatelessWidget {
  final List<Transaction> transactions = [];

@override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context){
            return PixScreen();
          }))
        ),
        title: Text("Histórico de Transferências"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: FutureBuilder<List<Transaction>>(
              future: Future.delayed(Duration(seconds: 1)).then((value) => findAll1()),
              builder: (context, snapshot){
                switch(snapshot.connectionState){
                  case ConnectionState.none:
                    break;
                  case ConnectionState.waiting:
                    ProgressBar();
                    break;
                  case ConnectionState.active:
                    break;
                  case ConnectionState.done:
                    final List<Transaction>? transactions = snapshot.data;
                    return ListView.builder(
                      reverse: true,
                      itemBuilder: (context,index){
                        final Transaction transaction = transactions![index];
                        return Container(
                          width: 50.sp,
                          height: 52.sp,
                          decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1,blurRadius: 1),]),
                          child: ListTile(
                            leading: Icon(Icons.monetization_on),
                            title: Text(transaction.value.toString(),style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                            subtitle: Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(transaction.contact.name + ' - ' + transaction.contact.accountNumber.toString(),style: TextStyle(fontSize: 16),),
                                  Icon(transaction.contact.id == 1010?Icons.call_received:Icons.send)
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: transactions!.length,
                    );
                    break;
                }
                return ProgressBar();
              },
            ),

        ),
        /*child: ListView.builder(
            itemBuilder: (context,index){
              final Transaction transaction = transactions[index];
              return Container(
                width: 50.sp,
                height: 55.sp,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1,blurRadius: 1),]),
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text(transaction.value.toString(),style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                  subtitle: Text(transaction.contact.name + '-' + transaction.contact.conta.toString(),style: TextStyle(fontSize: 16),),
                ),
              );
            },
          itemCount: transactions.length,
        ),*/

    );
}
}



