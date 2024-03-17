import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';
import '../common/appbar.dart';
import '../common/tag_card.dart';
import '../common/textfield.dart';

enum Category {
  tech,
  finance,
  design,
  marketing,
  diploma,
}

class CourseTileDetails {
  CourseTileDetails({
    required this.title,
    required this.price,
    required this.category,
  });

  final String title;
  final String price;
  final Category category;
}

class StorePage extends StatelessWidget {
  StorePage({super.key});

  final List<CourseTileDetails> courseList = [
    CourseTileDetails(
      title: 'Full Stack Web Development (MERN)',
      price: '14,160',
      category: Category.tech,
    ),
    CourseTileDetails(
      title: 'Python Advance',
      price: '9,440',
      category: Category.tech,
    ),
    CourseTileDetails(
      title: 'Java Advance',
      price: '14,160',
      category: Category.tech,
    ),
    CourseTileDetails(
      title: 'Investment Banking Advance',
      price: '23,600',
      category: Category.finance,
    ),
    CourseTileDetails(
      title: 'Finance Advance',
      price: '23,600',
      category: Category.finance,
    ),
    CourseTileDetails(
      title: 'DSA with C/C++',
      price: '14,160',
      category: Category.tech,
    ),
    CourseTileDetails(
      title: 'Digital Marketing',
      price: '14,160',
      category: Category.marketing,
    ),
    CourseTileDetails(
      title: 'Data Science Analytics',
      price: '14,160',
      category: Category.tech,
    ),
    CourseTileDetails(
      title: 'Cyber Security',
      price: '14,160',
      category: Category.tech,
    ),
    CourseTileDetails(
      title: 'Cloud Computing with DevOps',
      price: '29,500',
      category: Category.diploma,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isLightTheme = Theme.of(context).brightness == Brightness.light;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GlobalAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextField(hintText: 'Search for courses'),
                  const Text(
                    'COURSES (21)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: courseList.length,
                    padding: const EdgeInsets.only(top: 12),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: const EdgeInsets.only(right: 20),
                          child: Image.asset(
                            'assets/images/courses/$index.png',
                            width: 120,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                TagCard(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  label: 'FILES',
                                  color: isLightTheme
                                      ? Colors.black
                                      : Colors.grey.shade800,
                                ),
                                const SizedBox(width: 8),
                                TagCard(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  label: courseList[index]
                                      .category
                                      .toString()
                                      .split('.')
                                      .last
                                      .toUpperCase(),
                                  color: kAccentColor,
                                )
                              ],
                            ),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: screenWidth - 180,
                              child: Text(
                                courseList[index].title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                              ),
                            ),
                            Text(
                              '₹${courseList[index].price}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    separatorBuilder: (context, index) => Divider(
                      height: 36,
                      color: kAccentColor.withOpacity(0.2),
                    ),
                  ),
                  Divider(
                    height: 32,
                    color: kAccentColor.withOpacity(0.2),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isLightTheme ? Colors.black : Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.only(top: 4, bottom: 12),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const Row(
                      children: [
                        SizedBox(width: 20),
                        Spacer(),
                        Text(
                          'View All Courses',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                          size: 22,
                        ),
                        SizedBox(width: 16)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
