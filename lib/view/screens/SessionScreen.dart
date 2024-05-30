// import 'package:circular_seek_bar/circular_seek_bar.dart';
// import 'package:flutter/material.dart';
//
// class SessionScreen extends StatelessWidget {
//    SessionScreen({Key? key}) : super(key: key);
//   final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Session"),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Icon(Icons.replay),
//           ),
//         ],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Center(
//           //   child: Container(
//           //     height: 300,
//           //     width: 300,
//           //     decoration: BoxDecoration(
//           //       color: Colors.blue,
//           //       borderRadius: BorderRadiusDirectional.circular(150)
//           //     ),
//           //
//           //   ),
//           // ),
//           CircularSeekBar(
//             width: double.infinity,
//             height: 250,
//             progress: _valueNotifier,
//             barWidth: 8,
//             startAngle: 45,
//             sweepAngle: 270,
//             strokeCap: StrokeCap.butt,
//             progressGradientColors: const [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.indigo, Colors.purple],
//             innerThumbRadius: 5,
//             innerThumbStrokeWidth: 3,
//             innerThumbColor: Colors.white,
//             outerThumbRadius: 5,
//             outerThumbStrokeWidth: 10,
//             outerThumbColor: Colors.blueAccent,
//             dashWidth: 1,
//             dashGap: 2,
//             animation: true,
//             valueNotifier: _valueNotifier,
//             child: Center(
//               child: ValueListenableBuilder(
//                   valueListenable: _valueNotifier,
//                   builder: (_, double value, __) => Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text('${value.round()}', style: kNotoSansBold16.copyWith(color: Colors.white)),
//                       Text('progress', style: kNotoSansRegular14.copyWith(color: Colors.grey)),
//                     ],
//                   )),
//             ),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         child: Icon(Icons.pause),
//       ),
//     );
//   }
// }
import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';

// class SessionScreen extends StatelessWidget {
//   SessionScreen({
//     Key? key,
//     required this.workDuration,
//     required this.breakDuration,
//     required this.sessions,
//   }) : super(key: key);
//
//   final int workDuration;
//   final int breakDuration;
//   final int sessions;
//
//
//   // Define _progress as a ValueNotifier<double>
//   final ValueNotifier<double> _progress = ValueNotifier(0);
//   final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Session"),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Icon(Icons.replay),
//           ),
//         ],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CircularSeekBar(
//             width: double.infinity,
//             height: 250,
//             progress: _progress.value,  // Use the current value of _progress
//             barWidth: 8,
//             startAngle: 45,
//             sweepAngle: 270,
//             strokeCap: StrokeCap.butt,
//             progressGradientColors: const [
//               Colors.red,
//               Colors.orange,
//               Colors.yellow,
//               Colors.green,
//               Colors.blue,
//               Colors.indigo,
//               Colors.purple
//             ],
//             innerThumbRadius: 5,
//             innerThumbStrokeWidth: 3,
//             innerThumbColor: Colors.white,
//             outerThumbRadius: 5,
//             outerThumbStrokeWidth: 10,
//             outerThumbColor: Colors.blueAccent,
//             dashWidth: 1,
//             dashGap: 2,
//             animation: true,
//             valueNotifier: _valueNotifier,
//             child: Center(
//               child: ValueListenableBuilder<double>(
//                 valueListenable: _valueNotifier,
//                 builder: (_, double value, __) => Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     MyWidget(breakDuration: breakDuration, sessions: sessions,workDuration: workDuration),
//                     // Text('${value.round()}',
//                     //     style: TextStyle(
//                     //       fontSize: 16,
//                     //       fontWeight: FontWeight.bold,
//                     //       color: Colors.white,
//                     //     )),
//                     // Text('progress',
//                     //     style: TextStyle(
//                     //       fontSize: 14,
//                     //       color: Colors.grey,
//                     //     )),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Example: Update the progress when the button is pressed
//           _progress.value += 10;
//           if (_progress.value > 100) {
//             _progress.value = 0; // Reset progress after 100%
//           }
//         },
//         child: Icon(Icons.pause),
//       ),
//     );
//   }
// }

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
          CircularSeekBar(
            width: double.infinity,
            height: 250,
            progress: _progress.value,  // Use the current value of _progress
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
              child: ValueListenableBuilder<double>(
                valueListenable: _valueNotifier,
                builder: (_, double value, __) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('$workDuration', style: TextStyle(fontSize: 20)),
                    Text('$breakDuration', style: TextStyle(fontSize: 20)),
                    Text(' $sessions', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 20),
                    MyWidget(
                      workDuration: workDuration,
                      breakDuration: breakDuration,
                      sessions: sessions,
                    ),
                  ],
                ),
              ),
            ),
          ),
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

// class MyWidget extends StatelessWidget {
//
//    MyWidget({
//      Key? key,
//      required this.workDuration,
//      required this.breakDuration,
//      required this.sessions,
//    }) : super(key: key);
//
//    final int workDuration;
//    final int breakDuration;
//    final int sessions;
//   Widget build(BuildContext context) {
//     return Countdown(
//       seconds: workDuration,
//       build: (BuildContext context, double time) => Text(time.toString(),style:TextStyle(
//         fontSize: 30,
//
//       ),),
//
//       interval: Duration(milliseconds: 100),
//       onFinished: () {
//         print('Timer is done!');
//       },
//     );
//   }
// }