import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../common/appbar.dart';
import '../widgets/profile_page_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const GlobalAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                        CupertinoIcons.person_fill,
                        size: 30,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Pratap Chauhan',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Org Code : BSGTEQS',
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      CupertinoIcons.power,
                      color: Colors.red,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const ProfilePageTile(
                  icon: CupertinoIcons.book,
                  title: 'Course certificates',
                  subtitle: 'Access completed course certificates',
                ),
                const ProfilePageTile(
                  icon: CupertinoIcons.folder,
                  title: 'Free Material',
                  subtitle: 'Access free study materials',
                ),
                const ProfilePageTile(
                  icon: CupertinoIcons.person,
                  title: 'Edit Profile',
                  subtitle: 'Edit name, address and other user info',
                ),
                const ProfilePageTile(
                  icon: CupertinoIcons.creditcard,
                  title: 'Payments',
                  subtitle: 'Access transaction history and more',
                ),
                const ProfilePageTile(
                  icon: CupertinoIcons.quote_bubble,
                  title: 'Students Testimonial',
                  subtitle:
                      'Listen to what your alumni has to say about Pregrad',
                ),
                const ProfilePageTile(
                  icon: CupertinoIcons.settings,
                  title: 'Settings',
                  subtitle: 'Account settings, Notifiction settings...',
                ),
                const ProfilePageTile(
                  icon: CupertinoIcons.info_circle,
                  title: 'How to use the App',
                  subtitle: 'Learn how to make efficient use of the App',
                ),
                const ProfilePageTile(
                  icon: CupertinoIcons.shield,
                  title: 'Privacy Policy',
                  subtitle: 'Access free study materials',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
