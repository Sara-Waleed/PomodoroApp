import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/view/screens/DataScreen.dart';
import 'package:pomodoro/view/screens/History.dart';
import 'package:pomodoro/view/screens/MainScreen.dart';
import 'package:pomodoro/view/screens/splash.dart';

import '../../control/constants.dart';
import 'Home.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isDark = true;
  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Home": (context) =>  Home(
          isDark: isDark,
          Toggle: toggleTheme,
        ),
        "Splash": (context) => InitialScreen(),
        "Data":(context) => dataScreen(),
        "History":(context) => historyPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: MainScreen(),

    );
  }
}


