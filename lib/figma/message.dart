import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
            child: Image.asset('assets/images/profileimg.png',fit: BoxFit.cover)),
        actions: [
          Text("Message",style: TextStyle(fontSize: 30),),
          SizedBox(width: 120,),
          Icon(Icons.search_rounded,color: Colors.blue,size: 27,),
          SizedBox(width: 15,),
        ],
      ),
      body: ListView(
      children: [
        SizedBox(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/girl.png'),),
          title: Text("Rajo"),
          subtitle: Text("hii",style: TextStyle(color: Colors.blue),),
          trailing: Text("2s"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/girl2.png'),),
          title: Text("Kathryn Murphy"),
          subtitle: Text("3 Messages",style: TextStyle(color: Colors.blue),),
          trailing: Text("2h"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/dp3.png'),),
          title: Text("Wade Warren"),
          subtitle: Text("tommrow"),
          trailing: Text("5m"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/dp4.png'),),
          title: Text("Guy Hawkins"),
          subtitle: Text("dhoni bhai"),
          trailing: Text("2d"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/dp5.png'),),
          title: Text("Brooklyn Simmons"),
          subtitle: Text("vamika"),
          trailing: Text("2m"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/dp3.png'),),
          title: Text("Dianne Russell"),
          subtitle: Text("rjo ki shadi"),
          trailing: Text("22m"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/girl2.png'),),
          title: Text("Annette Black"),
          subtitle: Text("duniya"),
          trailing: Text("35m"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/dp4.png'),),
          title: Text("Theresa Webb"),
          subtitle: Text("monky_magic"),
          trailing: Text("5d"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/dp5.png',fit: BoxFit.fitHeight,),),
          title: Text("Eleanor Pena"),
          subtitle: Text("misthi"),
          trailing: Text("24m"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/girl.png'),),
          title: Text("Jane Cooper"),
          subtitle: Text("dhi lana h"),
          trailing: Text("33m"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/dp3.png'),),
          title: Text("Darrell Steward"),
          subtitle: Text("hii"),
          trailing: Text("1h 3m"),
        ),
        Divider(height: 10,),
        ListTile(
          leading: CircleAvatar(child: Image.asset('assets/images/girl2.png'),),
          title: Text("Isiris"),
          subtitle: Text("jiyashankar"),
          trailing: Text("23s"),
        ),
        Divider(height: 10,),

      ],
      ),
    );
  }

}
