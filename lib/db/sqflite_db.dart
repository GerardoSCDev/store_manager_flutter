import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDb {
  static final SqfliteDb instance = SqfliteDb._init();
  static Database? _database;

  SqfliteDb._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('sqflite_db_store.db');
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, fileName);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      $productsTable
    ''');
  }
}

String productsTable = '''
CREATE TABLE products (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        description TEXT,
        sku TEXT NOT NULL,
        category TEXT NOT NULL,
        quantity INTEGER NOT NULL,
        price REAL NOT NULL,
        cost REAL NOT NULL,
        supplier TEXT,
        location TEXT,
        expirationDate TEXT,
        isActive INTEGER NOT NULL,
        lastUpdated TEXT NOT NULL
      )
''';
