import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/appRoot/app_root.dart';
import 'package:notes_app_with_hive/resource/const.dart';
import 'package:notes_app_with_hive/resource/hive_helper.dart';
import 'package:hive/hive.dart';

void main() async {
  await initHive();
  await Hive.openBox(kNotesBox);

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppRoot());
}
