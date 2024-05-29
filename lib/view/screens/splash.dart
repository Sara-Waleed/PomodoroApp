
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InitialScreen extends StatelessWidget {

  const InitialScreen({ Key? key}) : super(key: key);

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
             Navigator.pushReplacementNamed(context, "Home");
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