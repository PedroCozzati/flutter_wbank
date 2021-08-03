import 'package:flutter/material.dart';
import 'package:flutter_application/components/transferencias.dart';
import 'package:flutter_application/http/web_client.dart';

import 'components/contacts.dart';
import 'database/app_database.dart';
import 'services/app.dart';

void main() {
  runApp(MyApp());
  findAll1().then((transactions)=>print('new transactions $transactions'));
  save1(Transaction(200.0, Contact(0, 'Gui', 2000))).then((transaction) => print(transaction));


}



