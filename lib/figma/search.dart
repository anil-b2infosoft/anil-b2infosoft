import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Container(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0XFFF9F7F7),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                  suffixIcon: Icon(Icons.search,color: Colors.blue,)
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Image.asset('assets/images/girl.png')),
            title: Text("H"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Image.asset('assets/images/girl2.png')),
            title: Text("Kathryn Murphy"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Image.asset('assets/images/dp3.png')),
            title: Text("Wade Warren"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Image.asset('assets/images/dp4.png')),
            title: Text("Brooklyn Simmons"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Image.asset('assets/images/dp5.png')),
            title: Text("Annette Black"),
          ),
          Divider(),
        ],
    ),

    );
  }
}
