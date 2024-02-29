import 'package:flutter/material.dart';

import 'message.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            leading: Image.asset(
              'assets/images/applogo.png',
              width: 30,
              height: 28,
            ),
            title: Text(
              "reelery",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0XFF00D1FF),
                letterSpacing: 15,
              ),
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (contex) => Message()));
                },
                child: Image.asset(
                  'assets/images/message.png',
                  height: 21,
                  width: 25,
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: "For You"), //tab 1
                Tab(
                  text: "Following",
                )
              ],
            ),
          ),
        ),
        // body: SingleChildScrollView(
        //   child: Container(
        //     child: Text("selected: ${_selectedIndex}"),
        //   ),
        // ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/girl.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Row(
                            children: [
                              Text("H"),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                'assets/images/correct.png',
                                height: 20,
                                width: 23,
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/girl2.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text("Darrell Steward"),
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/dp3.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text("Cameron Williamson"),
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
                                  'assets/images/post2.png',
                                  width: 169,
                                  height: 187,
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/dp4.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Row(
                            children: [
                              Text("Dianne Russell"),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                'assets/images/correct.png',
                                height: 20,
                                width: 23,
                              ),
                            ],
                          ),
                          subtitle: Text("It's a new day in America"),
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/dp5.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text("Courtney Henry"),
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
                                  'assets/images/post3.png',
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
                            Icon(
                              Icons.favorite,
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/girl.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text("Savannah Nguyen"),
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
                                  'assets/images/post4.png',
                                  width: 169,
                                  height: 187,
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
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/girl.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Row(
                            children: [
                              Text("H"),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                'assets/images/correct.png',
                                height: 20,
                                width: 23,
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/girl2.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text("Darrell Steward"),
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/dp3.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text("Cameron Williamson"),
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
                                  'assets/images/post2.png',
                                  width: 169,
                                  height: 187,
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/dp4.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Row(
                            children: [
                              Text("Dianne Russell"),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                'assets/images/correct.png',
                                height: 20,
                                width: 23,
                              ),
                            ],
                          ),
                          subtitle: Text("It's a new day in America"),
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/dp5.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text("Courtney Henry"),
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
                                  'assets/images/post3.png',
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
                            Icon(
                              Icons.favorite,
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
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              'assets/images/girl.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text("Savannah Nguyen"),
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
                                  'assets/images/post4.png',
                                  width: 169,
                                  height: 187,
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
                ],
              ),
            )
          ],
        ),
      ),
    );;
  }
}
