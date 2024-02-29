import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  // Avoid errors caused by flutter upgrade.
  WidgetsFlutterBinding.ensureInitialized();

  final database = openDatabase(
    join(await getDatabasesPath(), 'my_database.db'),
    onCreate: (db, version) {
      // Run the CREATE TABLE statement on the database.
      return db.execute(
        'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
      );
    },
    version: 1,
  );
  // Open the database and store the reference.



  // Define a Dog class that contains three pieces of data:
  // A unique id, the name, and the age of each dog.


  // Define a function that inserts dogs into the database
  Future<void> insertDog(Dog dog) async {
  // Get a reference to the database.
  final db = await database;

  // Insert the Dog into the correct table. You might also specify the
  // `conflictAlgorithm` to use in case the same dog is inserted twice.
  //
  // In this case, replace any previous data.
  await db.insert(
  'dogs',
  dog.toMap(),
  conflictAlgorithm: ConflictAlgorithm.replace,
  );
  }

  // A method that retrieves all the dogs from the dogs table.
  Future<List<Dog>> dogs() async {
  // Get a reference to the database.
  final db = await database;

  // Query the table for all the dogs.
  final List<Map<String, Object?>> dogMaps = await db.query('dogs');

  // Convert the list of each dog's fields into a list of `Dog` objects.
  return [
  for (final {
  'id': id as int,
  'name': name as String,
  'age': age as int,
  } in dogMaps)
  Dog(id: id, name: name, age: age),
  ];
  }

  // Create a Dog and add it to the dogs table
  var fido = Dog(
  id: 1,
  name: 'Fido',
  age: 5,
  );

    await insertDog(fido);
  //  Print the updated results.
     print(await dogs());
  print('name of dog :${fido.name}');
  print('age of dog :${fido.age}');// Prints Fido with age 35.
  print('Id :${fido.id}');
}
class Dog {

  final int id;
  final String name;
  final int age;

  const Dog({
    required this.id,
    required this.name,
    required this.age,
  });

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }
}