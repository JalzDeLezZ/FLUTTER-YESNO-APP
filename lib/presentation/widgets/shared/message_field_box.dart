// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MessageFieldBoxScreen extends StatelessWidget {
  final ValueChanged<String> onSubmitted;

  const MessageFieldBoxScreen({Key? key, required this.onSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.transparent),
    );
    final inputDecoration = InputDecoration(
      hintText: 'Type a message',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          textController.clear();
          onSubmitted(textValue);
        },
      ),
    );
    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
        onSubmitted(value);
      },
      // onChanged: (value) {
      //   print('Typing message $value');
      // },
    );
  }
}
