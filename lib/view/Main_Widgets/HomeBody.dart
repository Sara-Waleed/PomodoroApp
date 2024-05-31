import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/SessionScreen.dart';



class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final TextEditingController workDurationController = TextEditingController();
  final TextEditingController breakDurationController = TextEditingController();
  final TextEditingController sessionsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pomodoro Setup")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 38),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Work Duration", style: TextStyle(fontSize: 25)),
              SizedBox(height: 15),
              TextField(
                controller: workDurationController,
                decoration: InputDecoration(hintText: "(In Minutes)"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 30),
              Text("Break Duration", style: TextStyle(fontSize: 25)),
              SizedBox(height: 15),
              TextField(
                controller: breakDurationController,
                decoration: InputDecoration(hintText: "(In Minutes)"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 30),
              Text("Sessions", style: TextStyle(fontSize: 25)),
              SizedBox(height: 15),
              TextField(
                controller: sessionsController,
                decoration: InputDecoration(hintText: "(Number of work sessions)"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  int workDuration = int.parse(workDurationController.text);
                  int breakDuration = int.parse(breakDurationController.text);
                  int sessions = int.parse(sessionsController.text);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SessionScreen(
                        workDuration: workDuration,
                        breakDuration: breakDuration,
                        sessions: sessions,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Start", style: TextStyle(fontSize: 25, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
