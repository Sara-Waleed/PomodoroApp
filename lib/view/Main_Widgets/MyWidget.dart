import 'package:flutter/cupertino.dart';
import 'package:timer_count_down/timer_count_down.dart';

class MyWidget extends StatelessWidget {
  final int workDuration;
  final int breakDuration;
  final int sessions;

  MyWidget({
    Key? key,
    required this.workDuration,
    required this.breakDuration,
    required this.sessions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Countdown(
      seconds: workDuration * 60, // Convert minutes to seconds
      build: (BuildContext context, double time) => Text(
        time.toString(),
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      interval: Duration(milliseconds: 100),
      onFinished: () {
        print('Timer is done!');
        // Here you can implement logic for the break timer
      },
    );
  }
}
