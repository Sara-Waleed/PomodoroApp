import 'package:hive/hive.dart';


class DataModel {
  final String number;
  final String text;

  DataModel({required this.text, required this.number});

}

// class SessionData {
//   final int workDuration;
//   final int breakDuration;
//   final int sessions;
//   final DateTime timestamp;
//
//   SessionData({
//     required this.workDuration,
//     required this.breakDuration,
//     required this.sessions,
//     required this.timestamp,
//   });
//
//   // Convert SessionData to a Map
//   Map<String, dynamic> toMap() {
//     return {
//       'workDuration': workDuration,
//       'breakDuration': breakDuration,
//       'sessions': sessions,
//       'timestamp': timestamp.toIso8601String(),
//     };
//   }
//
//   // Create a SessionData from a Map
//   factory SessionData.fromMap(Map<String, dynamic> map) {
//     return SessionData(
//       workDuration: map['workDuration'],
//       breakDuration: map['breakDuration'],
//       sessions: map['sessions'],
//       timestamp: DateTime.parse(map['timestamp']),
//     );
//   }
// }




@HiveType(typeId: 0)
class SessionData extends HiveObject {
  @HiveField(0)
  final int workDuration;

  @HiveField(1)
  final int breakDuration;

  @HiveField(2)
  final int sessions;

  @HiveField(3)
  final DateTime timestamp;

  SessionData({
    required this.workDuration,
    required this.breakDuration,
    required this.sessions,
    required this.timestamp,
  });
}
