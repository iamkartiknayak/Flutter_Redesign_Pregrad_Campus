import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './pages/batches_page.dart';
import './pages/chat_page.dart';
import './pages/home_page.dart';
import './pages/profile_page.dart';
import './pages/store_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    const BatchesPage(),
    StorePage(),
    const ChatsPage(),
    const ProfilePage(),
  ];
  void updatePageIndex(int index) => setState(() => currentIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: updatePageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(CupertinoIcons.house),
            selectedIcon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          NavigationDestination(
            // icon: Icon(Icons.layers),
            icon: Icon(CupertinoIcons.layers),
            selectedIcon: Icon(CupertinoIcons.layers_fill),
            label: 'Batches',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.bag),
            selectedIcon: Icon(CupertinoIcons.bag_fill),
            label: 'Store',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            selectedIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.person),
            selectedIcon: Icon(CupertinoIcons.person_fill),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
