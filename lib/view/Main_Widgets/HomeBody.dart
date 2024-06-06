
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/view/Main_Widgets/_buildTextField.dart';
import '../screens/SessionScreen.dart';
import 'CounterTitle.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final TextEditingController workDurationController = TextEditingController();
  final TextEditingController breakDurationController = TextEditingController();
  final TextEditingController sessionsController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    workDurationController.dispose();
    breakDurationController.dispose();
    sessionsController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 38),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CounterTitle('Work Duration'),
                buildTextField(
                  controller: workDurationController,
                  hintText: "(In Minutes)",
                  fieldName: 'work duration',
                ),
                SizedBox(height: 30),
                CounterTitle('Break Duration'),
                buildTextField(
                  controller: breakDurationController,
                  hintText: "(In Minutes)",
                  fieldName: 'break duration',
                ),
                SizedBox(height: 30),
                CounterTitle('Sessions'),
                buildTextField(
                  controller: sessionsController,
                  hintText: "(Number of work sessions)",
                  fieldName: 'session number',
                ),
                SizedBox(height: 50),
                _buildStartButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }




  // Widget for building the start button with validation check
  Widget _buildStartButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // If the form is valid, navigate to the next screen
          int workDuration = int.parse(workDurationController.text);
          int breakDuration = int.parse(breakDurationController.text);
          int sessions = int.parse(sessionsController.text);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TimerScreen(
                workDuration: workDuration,
                breakDuration: breakDuration,
                sessions: sessions,
              ),
            ),
          );
        } else {
          // If the form is not valid, display a snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Please fill in all fields correctly')),
          );
        }
      },
      child: Text(
        'Start',
        style: TextStyle(fontSize: 25),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
