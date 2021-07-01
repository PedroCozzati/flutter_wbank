import 'package:flutter_application/components/formProdutos.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase(){
  return getDatabasesPath().then((dbPatch) {
    final String path = join(dbPatch,'web_bank.db');
    return openDatabase(path,onCreate: (db, version){
      db.execute(
          'CREATE TABLE contacts('
              'id INTEGER PRIMARY KEY,'
              'name TEXT, '
              'conta INTEGER)'
      );
    },version: 1);
  });
}

Future<int> save (Produtos contact){
  return createDatabase().then((db){
    final Map<String, dynamic> contactMap = Map();
    contactMap['name'] = contact.name;
    contactMap['conta'] = contact.conta;
    return db.insert('contacts', contactMap);
  });
}

Future<List<Produtos>> findAll(){
  return createDatabase().then((db) {
    return db.query('contacts').then((maps){
      final List<Produtos> contacts = [];
      for (Map<String, dynamic> map in maps){
        final Produtos contact = Produtos(
          map['id'],
          map['name'],
          map['conta'],
        );
        contacts.add(contact);
      }
      return contacts;
    });
  });
}