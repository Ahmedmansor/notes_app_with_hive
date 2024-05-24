import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: 10,
      itemBuilder: (context, index) {
        return const NoteItem();
      },
    );
  }
}
