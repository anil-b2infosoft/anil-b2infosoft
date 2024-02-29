import 'dart:async';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';


class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

   Future<Database> initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "your_database.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE YourTable(id INTEGER PRIMARY KEY, name TEXT, description TEXT)");
  }

  Future<int> saveItem(YourItem item) async {
    var dbClient = await db;
    int res = await dbClient!.insert("YourTable", item.toMap());
    return res;
  }

  Future<List<YourItem>> getItems() async {
    var dbClient = await db;
    List<Map> list = await dbClient!.rawQuery("SELECT * FROM YourTable");
    List<YourItem> items = [];
    for (int i = 0; i < list.length; i++) {
      items.add(YourItem.fromMap(list[i]));
    }
    return items;
  }

  Future<int> deleteItem(int id) async {
    var dbClient = await db;
    int res =
        await dbClient!.rawDelete('DELETE FROM YourTable WHERE id = ?', [id]);
    return res;
  }

  Future<int> updateItem(YourItem item) async {
    var dbClient = await db;
    int res = await dbClient!.update("YourTable", item.toMap(),
        where: "id = ?", whereArgs: <int>[item.id]);
    return res;
  }

  Future close() async {
    var dbClient = await db;
    dbClient!.close();
  }
}

class YourItem {
  int id;
  String name;
  String description;

  YourItem(this.id, this.name, this.description);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
      'description': description
    };
    return map;
  }

  YourItem.fromMap(Map<dynamic, dynamic> map)
      : id = map['id'],
        name = map['name'],
        description = map['description'];
}
