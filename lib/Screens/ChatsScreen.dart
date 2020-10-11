import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
