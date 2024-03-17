import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../common/appbar.dart';
import '../common/textfield.dart';
import '../widgets/chat_tile.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          CupertinoIcons.add,
          color: Colors.white,
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GlobalAppBar(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(hintText: 'Search by name or number')),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'MESSAGES',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ChatTile(
            icon: CupertinoIcons.person_2_fill,
            title: 'March Batch: Placement',
            message: 'Rohit : yes',
            date: '22/03/2024',
          ),
          ChatTile(
            icon: CupertinoIcons.person_2_fill,
            title: 'March Batch: Android App Development',
            message: 'Yami : How to include external resouce file',
            date: '22/03/2024',
          ),
          ChatTile(
            icon: CupertinoIcons.person_fill,
            title: 'Pregrad Campus',
            message: 'Dear user, we welcome you to Pregrad',
            date: '22/03/2024',
          ),
        ],
      ),
    );
  }
}
