import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
    required this.date,
  });

  final IconData icon;
  final String title;
  final String message;
  final String date;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        radius: 24,
        child: Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        message,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 14),
      ),
      trailing: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(date),
          ),
        ],
      ),
    );
  }
}
