import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pomodoro/view/screens/MainScreen.dart';


import 'model/DataModel.dart';
import 'model/SessionDataAdapter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(SessionDataAdapter()); // Register the adapter
  await Hive.openBox<SessionData>('sessionBox'); // Open a box
  runApp(MainScreen());
}

