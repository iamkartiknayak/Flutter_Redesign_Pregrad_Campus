import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BatchTile extends StatelessWidget {
  const BatchTile({
    super.key,
    required this.title,
    required this.category,
    required this.startDate,
    required this.totalClassCount,
    required this.attendedClassCount,
  });

  final String title;
  final String category;
  final String startDate;
  final int totalClassCount;
  final int attendedClassCount;

  String getAttendancePercent() =>
      ((attendedClassCount / totalClassCount) * 100).toStringAsFixed(0);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(
        top: 12,
        bottom: 8,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: screenWidth / 1.3,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 18,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(
                CupertinoIcons.calendar,
                size: 20,
              ),
              const SizedBox(width: 12),
              Text(
                startDate,
                style: TextStyle(
                  color: isLightTheme
                      ? Colors.grey.shade700
                      : Colors.grey.shade300,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(
                CupertinoIcons.collections,
                size: 20,
              ),
              const SizedBox(width: 12),
              Text(
                category,
                style: TextStyle(
                  color: isLightTheme
                      ? Colors.grey.shade700
                      : Colors.grey.shade300,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Classes attended (${getAttendancePercent()}%)'),
              Text('$attendedClassCount/$totalClassCount'),
            ],
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            borderRadius: BorderRadius.circular(8),
            value: double.parse(getAttendancePercent()) / 100,
          )
        ],
      ),
    );
  }
}
