import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/CustomCard.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: ListView(
        children: const [
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
        ],
      ),
    );
  }
}
