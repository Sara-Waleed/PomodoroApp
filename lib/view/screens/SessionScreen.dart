
import 'package:flutter/material.dart';
import '../Main_Widgets/CircularBar.dart';


class SessionScreen extends StatelessWidget {
  final int workDuration;
  final int breakDuration;
  final int sessions;

  SessionScreen({
    Key? key,
    required this.workDuration,
    required this.breakDuration,
    required this.sessions,
  }) : super(key: key);

  // Define _progress as a ValueNotifier<double>
  final ValueNotifier<double> _progress = ValueNotifier(0);
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Session"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.replay),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularBar(progress: _progress, valueNotifier: _valueNotifier, workDuration: workDuration, breakDuration: breakDuration, sessions: sessions),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Example: Update the progress when the button is pressed
          _progress.value += 10;
          if (_progress.value > 100) {
            _progress.value = 0; // Reset progress after 100%
          }
        },
        child: Icon(Icons.pause),
      ),
    );
  }
}




