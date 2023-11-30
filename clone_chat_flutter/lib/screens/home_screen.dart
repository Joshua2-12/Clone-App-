import 'package:clone_chat_flutter/widgets/category_selector.dart';
import 'package:clone_chat_flutter/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';

import '../widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: const Center(
          child: Text(
            'Chats',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white, 
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          // ignore: deprecated_member_use
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: const Column(
                children: [
                  FavoriteContacts(),
                  RecentChats()
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
