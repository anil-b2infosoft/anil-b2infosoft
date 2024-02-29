import 'package:flutter/material.dart';
import 'package:hive_database/sqlite_database/sqft.dart';
import 'databasehelper.dart';

class CrudButton extends StatefulWidget {
  const CrudButton({super.key});

  @override
  State<CrudButton> createState() => _CrudButtonState();
}

class _CrudButtonState extends State<CrudButton> {
  DatabaseHelper db = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRUD BUTTONS"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen),
                onPressed: () async{

                  var fido = Dog(
                    id: 1,
                    name: 'Fido',
                    age: 5,
                  );
                  print('name of dog : ${fido.name}');
                },
                child: const Text("Insert",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent),
                onPressed: () async {
                  List<YourItem> items = await db.getItems();
                  // Handle the fetched items
                  if (items.isNotEmpty) {
                    // Print the items to the console
                    print('Items in the database: $items');
                    // You can also display the items in a list view or any other way
                  } else {
                    print('No items found in the database');
                  }

                },
                child: const Text("Read",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                onPressed: () {},
                child: const Text("Update",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () async {
                  int deletedItemId = await db.deleteItem(1);
                },
                child: const Text(
                  "Delete",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}