import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';
import '../common/appbar.dart';
import '../widgets/explore_card.dart';
import '../widgets/schedule_card.dart';

class ExploreCardDetail {
  ExploreCardDetail({
    required this.label,
    required this.imagePath,
    required this.count,
  });

  final String label;
  final String imagePath;
  final int count;
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<ExploreCardDetail> exploreCardList = [
    ExploreCardDetail(
      label: 'Technology',
      imagePath: 'assets/images/technology.png',
      count: 8,
    ),
    ExploreCardDetail(
      label: 'Design',
      imagePath: 'assets/images/design.png',
      count: 5,
    ),
    ExploreCardDetail(
      label: 'Diploma',
      imagePath: 'assets/images/diploma.png',
      count: 4,
    ),
    ExploreCardDetail(
      label: 'Marketing',
      imagePath: 'assets/images/marketing.png',
      count: 3,
    ),
    ExploreCardDetail(
      label: 'Architecture',
      imagePath: 'assets/images/architecture.png',
      count: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GlobalAppBar(),
          Image.asset('assets/images/dashboard_image.jpg'),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Explore courses',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 75,
                  child: ListView.builder(
                    itemCount: exploreCardList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ExploreCard(
                      count: exploreCardList[index].count,
                      imagePath: exploreCardList[index].imagePath,
                      label: exploreCardList[index].label,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Text(
                      'Your Schedule',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'View full Timetable',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Icon(
                      CupertinoIcons.chevron_right,
                      size: 18,
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ],
                ),
                _buildScheduleCards(),
                const SizedBox(height: 30),
                _buildFeedbackSection()
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _buildScheduleCards() {
    return SizedBox(
      height: 153,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ScheduleCard(
            isCompleted: true,
            title: 'Android App Development',
            courseName: 'Android Developement',
            batchMonth: 'March',
            dateTime: '22 Mar\'24 | 07:00 PM - 8:00 PM',
          ),
          ScheduleCard(
            isCompleted: false,
            title: 'Web Development - Full Stack',
            courseName: 'Web Developement',
            batchMonth: 'March',
            dateTime: '22 Mar\'24 | 09:00 PM - 10:00 PM',
          ),
          ScheduleCard(
            isCompleted: false,
            title: 'Android App Development',
            courseName: 'Android Developement',
            batchMonth: 'March',
            dateTime: '23 Mar\'24 | 07:00 PM - 8:00 PM',
          ),
          ScheduleCard(
            isCompleted: false,
            title: 'Web Development - Full Stack',
            courseName: 'Web Developement',
            batchMonth: 'March',
            dateTime: '23 Mar\'24 | 09:00 PM - 10:00 PM',
          ),
        ],
      ),
    );
  }

  Row _buildFeedbackSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Share your Exprience',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Give your tuto a smile by sharing your experience',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 12),
              InkWell(
                onTap: () {},
                splashColor: kAccentColor.withOpacity(0.2),
                child: Container(
                  alignment: Alignment.center,
                  constraints: const BoxConstraints(
                    maxWidth: 150,
                    minWidth: 150,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kAccentColor.withOpacity(0.8),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text(
                    'Write now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Image.asset(
            'assets/images/feedback_image.png',
          ),
        )
      ],
    );
  }
}
