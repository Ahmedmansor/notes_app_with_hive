import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/core/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app_with_hive/core/widgets/notes_view_body.dart';
import 'package:notes_app_with_hive/cubits/get_all_notes/get_all_notes_cubit.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    // TODO: implement initState
    GetAllNotesCubit.get(context).getAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            //to make the bottom sheet scrollable
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
