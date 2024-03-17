import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../common/appbar.dart';
import '../common/textfield.dart';
import '../widgets/batch_tile.dart';

class BatchesPage extends StatelessWidget {
  const BatchesPage({super.key});

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
                const CustomTextField(hintText: 'Search by name'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2 BATCHES',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      CupertinoIcons.sort_down,
                      size: 20,
                    ),
                  ],
                ),
                const BatchTile(
                  title: 'March Batch: Placement',
                  category: 'Uncategorized',
                  attendedClassCount: 3,
                  totalClassCount: 7,
                  startDate: '01/03/2024',
                ),
                const BatchTile(
                  title: 'March Batch: Android App Development',
                  category: 'Technology',
                  attendedClassCount: 6,
                  totalClassCount: 7,
                  startDate: '01/03/2024',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
