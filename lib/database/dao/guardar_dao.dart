// import 'package:flutter_application/components/contacts.dart';
// import 'package:flutter_application/components/guardar_dinheiro.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class GuardarDao{
//
//   static const String tableSql =  'CREATE TABLE guardar('
//       'id INTEGER PRIMARY KEY,'
//       'dinheiro INTEGER, '
//       'numeroConta INTEGER)';
//
//   Future<int> save(Guardar guardar) async{
//     final Database db = await createDatabase();
//     final Map<String,dynamic> guardarMap = Map();
//     guardarMap['dinheiro'] = guardar.dinheiro;
//     guardarMap['numeroConta'] = guardar.numeroConta;
//     return db.insert('guardar', guardarMap);
//   }
//
//   Future<List<Guardar>> findAll() async{
//     final Database db = await createDatabase();
//     final List<Map<String,dynamic>> result = await db.query('guardar');
//     final List<Guardar> guardar = [];
//     for (Map<String, dynamic>row in result){
//       final Guardar guardar = Guardar(
//         row['id'],
//         row['dinheiro'],
//         row['numeroConta'],
//       );
//       guardar.add(guardar);
//     }
//     return guardar;
//   }
// }
//
// Future<Database> createDatabase() async {
//   final String path = join(await getDatabasesPath(), 'web_bank.db');
//   return openDatabase(path,
//     onCreate:(db,version) {
//       db.execute(GuardarDao().tableSql
//       );
//     },
//     version: 1,
//     //onDowngrade: onDatabaseDowngradeDelete,
//   );
// }
//
// Future<int> save(Guardar guardar) async{
//   final Database db = await createDatabase();
//   final Map<String,dynamic> guardarMap = Map();
//   guardarMap['dinheiro'] = guardar.dinheiro;
//   guardarMap['numeoConta'] = guardar.numeroConta;
//   return db.insert('guardar', guardarMap);
// }
//
// Future<List<Guardar>> findAll() async{
//   final Database db = await createDatabase();
//   final List<Map<String,dynamic>> result = await db.query('guardar');
//   final List<Guardar> guardar = [];
//   for (Map<String, dynamic>row in result){
//     final Guardar guardar = Guardar(
//       row['id'],
//       row['dinheiro'],
//       row['numeroConta'],
//     );
//     guardar.add(guardar);
//   }
//   return guardar;
// }