// ignore_for_file: prefer_final_fields

import 'package:chatgpt/Constant/constants.dart';
import 'package:chatgpt/services/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool _isTyping = true;
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController = TextEditingController();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetsManager.openaiImage),
          ),
          title: const Text("chatGPT"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const Text("Hello this is chatGPT");
                    }),
              ),
              if (_isTyping) ...[
                const SpinKitThreeBounce(
                  color: Colors.white,
                  size: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  color: cardColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: textEditingController,
                            onSubmitted: (value) {
                              //TODO send message
                            },
                            decoration: const InputDecoration.collapsed(
                                hintText: "How can i help you",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                )
              ]
            ],
          ),
        ));
  }
}
