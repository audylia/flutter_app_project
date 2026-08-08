import 'package:flutter_app_project/day_18/models/user_login_model_flutter12.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();

  factory DBHelper() => _instance;

  DBHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB();

    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();

    final path = join(
      dbPath,
      'ppkd_flutter12.db',
    );

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE users(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nama TEXT,
            email TEXT UNIQUE,
            no_hp TEXT,
            password TEXT,
            sekolah TEXT
          )
        ''');
      },
    );
  }

  Future<bool> registerUser(
    UserModelSQL pengguna,
  ) async {
    final db = await database;

    try {
      await db.insert(
        'users',
        pengguna.toMap(),
      );

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<UserModelSQL?> loginUser(
    String email,
    String password,
  ) async {
    final db = await database;

    final List<Map<String, dynamic>> results =
        await db.query(
      'users',
      where: 'email = ? AND password = ?',
      whereArgs: [
        email,
        password,
      ],
    );

    if (results.isNotEmpty) {
      return UserModelSQL.fromMap(
        results.first,
      );
    }

    return null;
  }

  Future<List<UserModelSQL>> getAllUsers() async {
    final db = await database;

    final List<Map<String, dynamic>> results =
        await db.query('users');

    return results
        .map(
          (map) => UserModelSQL.fromMap(map),
        )
        .toList();
  }

  Future<void> deleteUser(int id) async {
    final db = await database;

    await db.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<bool> updateUser(
    UserModelSQL pengguna,
  ) async {
    final db = await database;

    try {
      int count = await db.update(
        'users',
        pengguna.toMap(),
        where: 'id = ?',
        whereArgs: [pengguna.id],
      );

      return count > 0;
    } catch (e) {
      return false;
    }
  }
}