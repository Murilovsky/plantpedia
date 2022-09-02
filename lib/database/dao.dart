class databaseDAO {
  static const String tableSql = 'CREATE TABLE $_tableName('
      'id INTEGER PRIMARY KEY, '
      'nome TEXT, '
      'numero_conta INTEGER)';
  static const String _tableName = 'plants';
}
