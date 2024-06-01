// ignore: file_names
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/CallsScreen.dart';
import 'package:whatsapp_clone/Pages/CameraScreen.dart';
import 'package:whatsapp_clone/Pages/ChatPage.dart';
import 'package:whatsapp_clone/Pages/UpdatesScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp Clone'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              log(value.toString());
            },
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white)),
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  value: "New group",
                  child: Text("New group"),
                ),
                PopupMenuItem(
                  value: "New broadcast",
                  child: Text("New broadcast"),
                ),
                PopupMenuItem(
                  value: "Whatsapp web",
                  child: Text("Whatsapp web"),
                ),
                PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Updates",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          CameraScreen(),
          ChatPage(),
          UpdatesScreen(),
          CallsScreen(),
        ],
      ),
    );
  }
}
