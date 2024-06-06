// lib/model/SessionManager.dart

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pomodoro/model/DataModel.dart';

import '../main.dart';
import 'SessionDataAdapter.dart';

class SessionManager {
  late Box<SessionData> sessionBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(SessionDataAdapter());
    sessionBox = await Hive.openBox<SessionData>('sessionBox');
  }

  List<SessionData> getSessions() {
    return sessionBox.values.toList();
  }

  Future<void> addSession(SessionData session) async {
    await sessionBox.add(session);
  }
}
