import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final List<Map<String, String>> data = [
    {
      'pp': 'assets/pp1.jpg',
      'name': 'Jordan',
      'message': 'Bro, how are you?',
      'time': '18:28',
      'num': '2',
    },
    {
      'pp': 'assets/pp2.jpg',
      'name': 'Austin',
      'message': 'very good man',
      'time': '17:10',
      'num': '1',
    },
    {
      'pp': 'assets/pp3.jpg',
      'name': 'Bae',
      'message': 'i like it',
      'time': '16:55',
      'num': '4',
    },
    {
      'pp': 'assets/pp4.jpeg',
      'name': 'Mich',
      'message': 'Nice',
      'time': '15:08',
      'num': '1',
    },
    {
      'pp': 'assets/pp5.jpg',
      'name': 'Ramsy',
      'message': 'how r u bro?',
      'time': '12:28',
      'num': '2',
    },
    {
      'pp': 'assets/pp6.jpg',
      'name': 'Austin',
      'message': 'lol',
      'time': '11:00',
      'num': '2',
    },
    {
      'pp': 'assets/pp7.jpg',
      'name': 'Chandler',
      'message': 'very good',
      'time': 'Yesterday',
      'num': '1',
    },
  ];

  List<Widget> buildStories() {
    List<Widget> stories = new List<Widget>();
    for (Map story in data) {
      stories.add(
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xff5ce27f), const Color(0xff5cabe2)],
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Center(
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(story['pp']),
            ),
          ),
        ),
      );
    }
    return stories;
  }

  List<Widget> buildChatTiles() {
    List<Widget> chats = new List<Widget>();
    for (Map story in data) {
      chats.add(Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Slidable(
          actionPane: SlidableDrawerActionPane(),
          actionExtentRatio: 0.25,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(story['pp']),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            story['name'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            story['message'],
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        story['time'],
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xff5ce27f),
                              const Color(0xff5cabe2)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            story['num'],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 1,
              ),
            ],
          ),
          actions: [
            IconSlideAction(
              caption: 'Pin',
              color: Colors.grey,
              icon: Icons.pin_drop,
            ),
            IconSlideAction(
              caption: 'UnRead',
              color: Colors.blue,
              icon: Icons.message,
            ),
          ],
          secondaryActions: [
            IconSlideAction(
              caption: 'More',
              color: Colors.grey,
              icon: Icons.more_horiz,
            ),
            IconSlideAction(
              caption: 'Archive',
              color: Colors.blue,
              icon: Icons.archive,
            ),
          ],
        ),
      ));
    }
    return chats;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Chats',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.people,
              color: Color(0xff5ce27f),
              size: 30,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff5ce27f),
                        const Color(0xff5cabe2),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Row(
                  children: buildStories(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: buildChatTiles(),
            ),
          )
        ],
      ),
    );
  }
}
