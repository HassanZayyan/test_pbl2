import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static const String nameRoute = '/chat';

  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chat'),
      ),
      body: Center(
        child: Text('chat Page'),
      ),
    );
  }
}


