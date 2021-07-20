import 'package:flutter_application/components/contacts.dart';
import 'package:flutter_application/components/guardar_dinheiro.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() async {
  final String path = join(await getDatabasesPath(), 'web_bank.db');
  return openDatabase(path,
    onCreate:(db,version) {
      db.execute(
          'CREATE TABLE contacts('
               'id INTEGER PRIMARY KEY,'
               'name TEXT, '
               'conta INTEGER)'
              'CREATE TABLE guardar('
                'id INTEGER PRIMARY KEY,'
                'dinheiro INTEGER, '
                'numeroConta INTEGER)'

      );
    },
    version: 1,
      onDowngrade: onDatabaseDowngradeDelete,
  );
}

Future<int> save(Contact contact) async{
  final Database db = await createDatabase();
  final Map<String,dynamic> contactMap = Map();
     contactMap['name'] = contact.name;
     contactMap['conta'] = contact.conta;
     return db.insert('contacts', contactMap);
}

Future<int> saveG(Guardar guardar) async{
  final Database db = await createDatabase();
  final Map<String,dynamic> guardarMap = Map();
  guardarMap['dinheiro'] = guardar.dinheiro;
  guardarMap['numeoConta'] = guardar.numeroConta;
  return db.insert('guardar', guardarMap);
}

Future<List<Contact>> findAll() async{
  final Database db = await createDatabase();
  final List<Map<String,dynamic>> result = await db.query('contacts');
  final List<Contact> contacts = [];
  for (Map<String, dynamic>row in result){
    final Contact contact = Contact(
        row['id'],
        row['name'],
        row['conta'],
    );
    contacts.add(contact);
  }
  return contacts;
}

Future<List<Guardar>> findAllG() async{
  final Database db = await createDatabase();
  final List<Map<String,dynamic>> resultG = await db.query('guardar');
  final List<Guardar> guardarG = [];
  for (Map<String, dynamic>row in resultG){
    final Guardar guardar = Guardar(
      row['id'],
      row['dinheiro'],
      row['numeroConta'],
    );
    guardarG.add(guardar);
  }
  return guardarG;
}

// Future<Database> createDatabase(){
//   return getDatabasesPath().then((dbPatch) {
//     final String path = join(dbPatch,'web_bank.db');
//     return openDatabase(path,onCreate: (db, version){
//       db.execute(
//           'CREATE TABLE contacts('
//               'id INTEGER PRIMARY KEY,'
//               'name TEXT, '
//               'conta INTEGER)'
//       );
//     },onDowngrade: onDatabaseDowngradeDelete,version: 1);
//
//   });
// }
//
// Future<int> save (Contact contact){
//   return createDatabase().then((db){
//     final Map<String, dynamic> contactMap = Map();
//     contactMap['name'] = contact.name;
//     contactMap['conta'] = contact.conta;
//     return db.insert('contacts', contactMap);
//   });
// }
//
// Future<List<Contact>> findAll(){
//   return createDatabase().then((db) {
//     return db.query('contacts').then((maps){
//       final List<Contact> contacts = [];
//       for (Map<String, dynamic> map in maps){
//         final Contact contact = Contact(
//           map['id'],
//           map['name'],
//           map['conta'],
//         );
//         contacts.add(contact);
//       }
//       return contacts;
//     });
//   });
// }
//
