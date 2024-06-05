import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pomodoro/view/screens/MyApp.dart';

import 'model/DataModel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(SessionDataAdapter()); // Register the adapter
  await Hive.openBox<SessionData>('sessionBox'); // Open a box
  runApp(MyApp());
}
// file: lib/model/session_data.g.dart
// GENERATED CODE - DO NOT MODIFY BY HAND



class SessionDataAdapter extends TypeAdapter<SessionData> {
  @override
  final int typeId = 0;

  @override
  SessionData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SessionData(
      workDuration: fields[0] as int,
      breakDuration: fields[1] as int,
      sessions: fields[2] as int,
      timestamp: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, SessionData obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.workDuration)
      ..writeByte(1)
      ..write(obj.breakDuration)
      ..writeByte(2)
      ..write(obj.sessions)
      ..writeByte(3)
      ..write(obj.timestamp);
  }

  @override
  // ignore: hash_and_equals
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SessionDataAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}
