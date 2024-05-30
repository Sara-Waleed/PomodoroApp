import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyWidget.dart';

class CircularBar extends StatelessWidget {
  const CircularBar({
    super.key,
    required ValueNotifier<double> progress,
    required ValueNotifier<double> valueNotifier,
    required this.workDuration,
    required this.breakDuration,
    required this.sessions,
  }) : _progress = progress, _valueNotifier = valueNotifier;

  final ValueNotifier<double> _progress;
  final ValueNotifier<double> _valueNotifier;
  final int workDuration;
  final int breakDuration;
  final int sessions;

  @override
  Widget build(BuildContext context) {
    return CircularSeekBar(
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
    );
  }
}