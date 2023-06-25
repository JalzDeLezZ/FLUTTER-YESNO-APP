import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hello', fromWho: FromWho.me),
    Message(text: 'Are your return from the job', fromWho: FromWho.me),
    Message(text: 'Sheeeee', fromWho: FromWho.hers)
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
  }
}
