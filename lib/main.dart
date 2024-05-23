import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/views/notes_view.dart';

void main() {
  runApp(const NotesAppWithHive());
}

class NotesAppWithHive extends StatelessWidget {
  const NotesAppWithHive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const NotesView(),
    );
  }
}
