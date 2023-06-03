import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('ChatScreen'),
          centerTitle: false,
          leading: const Padding(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
          )),
      body: const Center(
        child: Text('ChatScreen'),
      ),
    );
  }
}
