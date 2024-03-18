import 'package:flutter/material.dart';

import './theme.dart';
import './bottom_navbar.dart';

void main() => runApp(const PregradCampusApp());

class PregradCampusApp extends StatelessWidget {
  const PregradCampusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pregrad Campus App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const BottomNavbar(),
    );
  }
}
