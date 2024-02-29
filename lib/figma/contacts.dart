import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text("Groups",style: TextStyle(fontSize: 30),),
          SizedBox(width: 115,),
          Icon(Icons.people_alt,color: Colors.blue,size: 35,),
          SizedBox(width: 25,),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group1.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group2.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group3.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group4.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group5.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group6.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group3.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group1.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group3.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0 ,right: 8),
            child: Card(
              color: Color(0XFFF2F2F2),
              child: ListTile(
                leading: Container(
                  height: 42,
                  width: 40,
                  child: Image.asset('assets/images/group5.png'),
                ),
                title: Text("Hourrah prod",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                subtitle: Text("hey, everyone ",style: TextStyle(color: Colors.blue,fontSize: 10),),
                trailing: Text("2015"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
