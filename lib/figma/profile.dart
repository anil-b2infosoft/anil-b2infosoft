import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 41,
          left: 0,
          right: 0,
          child: Container(
            height: 105,
            width: double.infinity,
            child: Image.asset(
              'assets/images/backgroud.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 110,
          left: 5,
          child: Container(
            child: CircleAvatar(
              radius: 42,
              child:
                  Image.asset('assets/images/profile2.png', fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          top: 157,
          left: 151,
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "32k ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      "2 ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 180,
          left: 151,
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Followers",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 115,
                    ),
                    Text(
                      "Following ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 199,
            left: 22,
            child: Container(
              child: Text(
                "Isiris",
                style: TextStyle(fontSize: 24),
              ),
            )),
        Positioned(
            top: 239,
            left: 22,
            child: Container(
              child: Text(
                "Welcome to my world",
                style: TextStyle(fontSize: 15),
              ),
            )),
        Positioned(
          top: 280,
          left: 10,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 36,
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
                    ),
                    onPressed: () {},
                    child: Text("Follow",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 36,
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue
                    ),
                    onPressed: () {},
                    child: Text("Followers",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 360,
          width: 400,
          left: 8,
          child: Card(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset(
                      'assets/images/profileimg.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Row(
                    children: [
                      Text("Isiris"),
                      SizedBox(
                        width: 3,
                      ),
                    ],
                  ),
                  subtitle: Text("It's a new day in cyprus"),
                  minVerticalPadding: 10,
                  trailing: Icon(Icons.more_horiz),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 71,
                    ),
                    Icon(
                      Icons.favorite_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Image.asset(
                      'assets/images/comment.png',
                      height: 27,
                      width: 28,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Image.asset(
                      'assets/images/repost.png',
                      height: 27,
                      width: 25,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 71,
                    ),
                    Text("100k likes    12.2k replies     130 repost")
                  ],
                )
              ],
            ),
            color: Colors.white,
          ),
        ),
        Positioned(
          top: 500,
          width: 400,
          left: 8,
          child: Card(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset(
                      'assets/images/profileimg.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text("Isiris"),
                  subtitle: Text("It's a new day in America"),
                  minVerticalPadding: 10,
                  trailing: Icon(Icons.more_horiz),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 71,
                    ),
                    Container(
                        child: Image.asset(
                          'assets/images/post1.png',
                          width: 169,
                          height: 123,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 71,
                    ),
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 14,
                    ),
                    Image.asset(
                      'assets/images/comment.png',
                      height: 27,
                      width: 28,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Image.asset(
                      'assets/images/repost.png',
                      height: 27,
                      width: 25,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 71,
                    ),
                    Text("100k likes    12.2k replies     130 repost")
                  ],
                )
              ],
            ),
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
