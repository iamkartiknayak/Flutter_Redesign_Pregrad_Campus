import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './theme.dart';
import './bottom_navbar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const PregradCampusApp());
}

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
