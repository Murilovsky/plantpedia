import 'package:path/path.dart';
import 'package:plantpedia/database/dao.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'plantpedia.db');

  return openDatabase(path,
      onCreate: (db, version) => db.execute(databaseDAO.tableSql), version: 1);
}
