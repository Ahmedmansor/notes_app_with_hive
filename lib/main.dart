import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/appRoot/app_root.dart';
import 'package:notes_app_with_hive/models/note_model.dart';
import 'package:notes_app_with_hive/resource/const.dart';
import 'package:notes_app_with_hive/resource/hive_helper.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_with_hive/resource/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = SimpleBlocObserver();

  runApp(const AppRoot());
}
