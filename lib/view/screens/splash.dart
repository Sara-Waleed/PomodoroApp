
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/view/screens/Home.dart';

class InitialScreen extends StatelessWidget {
  final bool isDark;
  final VoidCallback toggleTheme;

  const InitialScreen({required this.isDark, required this.toggleTheme, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome To Session",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(
                    isDark: isDark,
                    Toggle: toggleTheme,
                  ),
                ),
              );
            },
            child: Text(
              "Start",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}