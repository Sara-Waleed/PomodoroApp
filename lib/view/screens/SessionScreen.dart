// import 'package:circular_seek_bar/circular_seek_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:timer_count_down/timer_count_down.dart';
// import 'package:timer_count_down/timer_controller.dart';
//
// class TimerScreen extends StatefulWidget {
//   final int workDuration;
//   final int breakDuration;
//   final int sessions;
//
//   TimerScreen({
//     required this.workDuration,
//     required this.breakDuration,
//     required this.sessions,
//   });
//
//   @override
//   _TimerScreenState createState() => _TimerScreenState();
// }
//
// class _TimerScreenState extends State<TimerScreen> {
//   final CountdownController _controller = CountdownController(autoStart: true);
//   bool _isWorkTime = true;
//   int _currentSession = 1;
//   bool _isRunning = true;
//
//   late ValueNotifier<double> _progress;
//   late ValueNotifier<double> _valueNotifier;
//
//   @override
//   void initState() {
//     super.initState();
//     _progress = ValueNotifier(0.0);
//     _valueNotifier = ValueNotifier(0.0);
//   }
//
//   void _toggleTimer() {
//     setState(() {
//       if (_isRunning) {
//         _controller.pause();
//       } else {
//         _controller.resume();
//       }
//       _isRunning = !_isRunning;
//     });
//   }
//
//   void _nextSession() {
//     setState(() {
//       if (_isWorkTime) {
//         _isWorkTime = false;
//       } else {
//         _isWorkTime = true;
//         _currentSession++;
//       }
//       if (_currentSession <= widget.sessions) {
//         _controller.restart();
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('All sessions are completed!')),
//         );
//       }
//     });
//   }
//
//   void _updateProgress(double time) {
//     final totalDuration = (_isWorkTime ? widget.workDuration : widget.breakDuration) * 60;
//     final progressValue = 1 - (time / totalDuration);
//     _progress.value = progressValue;
//     _valueNotifier.value = progressValue * 100; // update the seek bar value
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pomodoro Timer'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               _isWorkTime
//                   ? 'Work Session $_currentSession of ${widget.sessions}'
//                   : 'Break Session $_currentSession of ${widget.sessions}',
//               style: TextStyle(fontSize: 30),
//             ),
//             SizedBox(height: 50),
//             CircularSeekBar(
//               width: double.infinity,
//               height: 250,
//               progress: _progress.value,
//               barWidth: 8,
//               startAngle: 45,
//               sweepAngle: 270,
//               strokeCap: StrokeCap.butt,
//               progressGradientColors: const [
//                 Colors.red,
//                 Colors.orange,
//                 Colors.yellow,
//                 Colors.green,
//                 Colors.blue,
//                 Colors.indigo,
//                 Colors.purple
//               ],
//               innerThumbRadius: 5,
//               innerThumbStrokeWidth: 3,
//               innerThumbColor: Colors.white,
//               outerThumbRadius: 5,
//               outerThumbStrokeWidth: 10,
//               outerThumbColor: Colors.blueAccent,
//               dashWidth: 1,
//               dashGap: 2,
//               animation: true,
//               valueNotifier: _valueNotifier,
//               child: Center(
//                 child: Countdown(
//                   controller: _controller,
//                   seconds: _isWorkTime
//                       ? widget.workDuration * 60
//                       : widget.breakDuration * 60,
//                   build: (_, double time) {
//                     _updateProgress(time);
//                     return Text(
//                       '${(time / 60).floor().toString().padLeft(2, '0')}:${(time % 60).floor().toString().padLeft(2, '0')}',
//                       style: TextStyle(fontSize: 50),
//                     );
//                   },
//                   interval: Duration(seconds: 1),
//                   onFinished: _nextSession,
//                 ),
//               ),
//             ),
//             SizedBox(height: 50),
//             ElevatedButton(
//               onPressed: _toggleTimer,
//               child: Text(_isRunning ? 'Pause' : 'Resume'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:timer_count_down/timer_controller.dart';

class TimerScreen extends StatefulWidget {
  final int workDuration;
  final int breakDuration;
  final int sessions;

  TimerScreen({
    required this.workDuration,
    required this.breakDuration,
    required this.sessions,
  });

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  final CountdownController _controller = CountdownController(autoStart: true);
  bool _isWorkTime = true;
  int _currentSession = 1;
  bool _isRunning = true;

  late ValueNotifier<double> _progress;
  late ValueNotifier<double> _valueNotifier;

  @override
  void initState() {
    super.initState();
    _progress = ValueNotifier(0.0);
    _valueNotifier = ValueNotifier(0.0);
  }

  void _toggleTimer() {
    setState(() {
      if (_isRunning) {
        _controller.pause();
      } else {
        _controller.resume();
      }
      _isRunning = !_isRunning;
    });
  }

  void _nextSession() {
    setState(() {
      if (_isWorkTime) {
        _isWorkTime = false;
      } else {
        _isWorkTime = true;
        _currentSession++;
      }
      if (_currentSession <= widget.sessions) {
        _controller.restart();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('All sessions are completed!')),
        );
      }
    });
  }

  void _updateProgress(double time) {
    final totalDuration = (_isWorkTime ? widget.workDuration : widget.breakDuration) * 60;
    final progressValue = 1 - (time / totalDuration);
    _progress.value = progressValue;
    _valueNotifier.value = progressValue * 100; // update the seek bar value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pomodoro Timer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _isWorkTime
                  ? 'Work Session $_currentSession of ${widget.sessions}'
                  : 'Break Session $_currentSession of ${widget.sessions}',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 50),
            CircularSeekBar(
              width: double.infinity,
              height: 250,
              progress: _progress.value,
              barWidth: 8,
              startAngle: 45,
              sweepAngle: 270,
              strokeCap: StrokeCap.butt,
              progressGradientColors: const [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple
              ],
              innerThumbRadius: 5,
              innerThumbStrokeWidth: 3,
              innerThumbColor: Colors.white,
              outerThumbRadius: 5,
              outerThumbStrokeWidth: 10,
              outerThumbColor: Colors.blueAccent,
              dashWidth: 1,
              dashGap: 2,
              animation: true,
              valueNotifier: _valueNotifier,
              child: Center(
                child:Countdown(
                  controller: _controller,
                  seconds: _isWorkTime
                      ? widget.workDuration * 60
                      : widget.breakDuration * 60,
                  build: (_, double time) {
                    _updateProgress(time); // Update progress continuously
                    return Text(
                      '${(time / 60).floor().toString().padLeft(2, '0')}:${(time % 60).floor().toString().padLeft(2, '0')}',
                      style: TextStyle(fontSize: 50),
                    );
                  },
                  interval: Duration(seconds: 1),
                  onFinished: () {
                    _controller.pause(); // Pause the timer
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text('Session Completed!'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              _nextSession();
                              _controller.resume(); // Resume the timer
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                ),

              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: _toggleTimer,
              child: Text(_isRunning ? 'Pause' : 'Resume'),
            ),
          ],
        ),
      ),
    );
  }
}
