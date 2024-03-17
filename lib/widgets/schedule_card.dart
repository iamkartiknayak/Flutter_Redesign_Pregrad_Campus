import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';
import '../common/tag_card.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    super.key,
    required this.isCompleted,
    required this.title,
    required this.courseName,
    required this.batchMonth,
    required this.dateTime,
  });

  final bool isCompleted;
  final String title;
  final String courseName;
  final String batchMonth;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    final bool isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).primaryColor,
      ),
      margin: const EdgeInsets.only(top: 8, right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TagCard(
            label: isCompleted ? 'COMPLETED' : 'UPCOMING',
            color: isCompleted ? kAccentColor : const Color(0xFFC2A42C),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            courseName,
            style: TextStyle(
              color: isLightTheme ? Colors.grey.shade700 : Colors.grey.shade300,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '$batchMonth Batch',
            style: TextStyle(
              color: isLightTheme ? Colors.grey.shade700 : Colors.grey.shade300,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                CupertinoIcons.clock,
                size: 16,
                color:
                    isLightTheme ? Colors.grey.shade700 : Colors.grey.shade300,
              ),
              const SizedBox(width: 4),
              Text(
                dateTime,
                style: const TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
