import 'package:flutter/material.dart';
import 'package:pmp_project_simulator/question_bottom.dart';
import 'package:pmp_project_simulator/question_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'intro_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  var isLoggedIn = (prefs.getBool('isLoggedIn') == null)
      ? false
      : prefs.getBool('isLoggedIn');

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: isLoggedIn! ? 'home' : 'home',
      initialRoute: 'intro_screen',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        'intro_screen': (context) => IntroScreen(),
        'questionScreen': (context) => QuestionBottom(),


      },
    ),
  );
}