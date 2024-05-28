import 'package:flutter/material.dart';
import 'package:pomodoro/view/screens/Home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final ThemeData lightTheme=
    ThemeData(
      primarySwatch: Colors.lightBlue,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        color: Colors.lightBlue,
      )
    );

   final ThemeData DarkTheme=
   ThemeData(
       primarySwatch: Colors.blue,
       brightness: Brightness.dark,
       appBarTheme: AppBarTheme(
         color: Colors.black,
       )
   );

   bool isDark= false;
  void toggleTheme(){
    setState(() {
      isDark=!isDark;
    });
  }

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:lightTheme ,
      darkTheme: DarkTheme,
      themeMode: isDark? ThemeMode.dark : ThemeMode.light,
      home: Home(
        isDark: isDark,
        Toggle: toggleTheme,
      ),
    );
  }
}

