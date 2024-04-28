import 'package:flutter/material.dart';
import 'package:twongere/route.dart';
import 'package:twongere/routes/home_screen/home_screen.dart';
import 'package:twongere/routes/home_screen/navigations/dictionary_screen/dictionary_screen.dart';
import 'package:twongere/routes/home_screen/navigations/home_nav/home_nav.dart';
import 'package:twongere/routes/home_screen/navigations/learn_screen/learn_screen.dart';
import 'package:twongere/routes/lesson_details_screen/lesson_details_screen.dart';
import 'package:twongere/routes/login_screen/login_screen.dart';
import 'package:twongere/routes/signup_screen/signup_screen.dart';
import 'package:twongere/routes/splash_screen/splash_screen.dart';
import 'package:twongere/routes/subscribe_screen/subscribe_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twongere',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute: RoutesGenerator.splashScreen,
      // onGenerateRoute: RoutesGenerator.generateRoute,
      home: const HomeScreen(),
    );
  }
}
