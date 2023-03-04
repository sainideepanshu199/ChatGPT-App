// ignore_for_file: prefer_const_constructors

import 'package:chatgpt/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'Constant/constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatGPT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          appBarTheme: AppBarTheme(color: cardColor)),
      home: const ChatScreen(),
    );
  }
}
