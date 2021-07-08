import 'package:flutter_application/components/contacts.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ContactDao{

  static const String tableSql =  'CREATE TABLE contacts('
      'id INTEGER PRIMARY KEY,'
      'name TEXT, '
      'conta INTEGER)';

  Future<int> save(Contact contact) async{
    final Database db = await createDatabase();
    final Map<String,dynamic> contactMap = Map();
    contactMap['name'] = contact.name;
    contactMap['conta'] = contact.conta;
    return db.insert('contacts', contactMap);
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
}

Future<Database> createDatabase() async {
  final String path = join(await getDatabasesPath(), 'web_bank.db');
  return openDatabase(path,
    onCreate:(db,version) {
      db.execute(ContactDao.tableSql
      );
    },
    version: 1,
    //onDowngrade: onDatabaseDowngradeDelete,
  );
}

Future<int> save(Contact contact) async{
  final Database db = await createDatabase();
  final Map<String,dynamic> contactMap = Map();
  contactMap['name'] = contact.name;
  contactMap['conta'] = contact.conta;
  return db.insert('contacts', contactMap);
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