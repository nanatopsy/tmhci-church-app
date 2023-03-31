// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class NotesDatabaseService {
//   String path;
//
//   NotesDatabaseService._();
//
//   static final NotesDatabaseService db = NotesDatabaseService._();
//
//   Database _database;
//
//   Future<Database> get database async {
//     if (_database != null) return _database;
//     // if _database is null we instantiate it
//     _database = await init();
//     return _database;
//   }
//
//   init() async {
//     String path = await getDatabasesPath();
//     path = join(path, 'notes.db');
//
//     return await openDatabase(path, version: 1,
//         onCreate: (Database db, int version) async {
//       await db.execute(
//         'CREATE TABLE Notes (_id INTEGER PRIMARY KEY, passage TEXT, verse TEXT, content TEXT);',
//       );
//     });
//   }
//
//   Future<List> getNotesFromDB() async {
//     final db = await database;
//     List notesList = [];
//     List<Map> maps = await db.query('Notes', columns: [
//       '_id',
//       'passage',
//       'verse',
//       'content',
//     ]);
//     if (maps.isNotEmpty) {
//       for (var map in maps) {
//         notesList.add(map);
//       }
//     }
//     return notesList;
//   }
//
//   Future<List<Map>> getNoteFromDB(String passage) async {
//     final db = await database;
//     List<Map> map =
//         await db.rawQuery('SELECT * FROM Notes WHERE passage = ?', [passage]);
//     return map;
//   }
//
//   updateNoteInDB(Map updatedNote) async {
//     final db = await database;
//     await db.update('Notes', updatedNote,
//         where: 'passage = ?', whereArgs: [updatedNote['passage']]);
//   }
//
//   deleteNoteInDB(Map noteToDelete) async {
//     final db = await database;
//     await db
//         .delete('Notes', where: '_id = ?', whereArgs: [noteToDelete['_id']]);
//   }
//
//   Future addNoteInDB(Map newNote) async {
//     final db = await database;
//     await db.transaction((transaction) async {
//       transaction.rawInsert(
//           'INSERT into Notes(passage, verse, content) VALUES ("${newNote['passage']}", "${newNote['verse']}", "${newNote['content']}");');
//     });
//     return newNote;
//   }
// }
