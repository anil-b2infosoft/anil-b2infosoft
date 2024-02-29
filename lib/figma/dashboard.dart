import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_database/figma/contacts.dart';
import 'package:hive_database/figma/profile.dart';
import 'package:hive_database/figma/search.dart';
import 'package:iconify/iconify.dart';

import 'home.dart';
import 'message.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Home(),
          Search(),
          Contacts(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0XFFC5C5C5),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0XFFC5C5C5),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt,
              color: Color(0XFFC5C5C5),
            ),
            label: 'contacts',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              child: Image.asset('assets/images/profileimg.png',fit: BoxFit.cover)
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        onTap: _onItemTapped,
      ),

    );
  }
}
