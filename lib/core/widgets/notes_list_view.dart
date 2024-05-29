import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_hive/core/widgets/note_item.dart';
import 'package:notes_app_with_hive/cubits/get_all_notes/get_all_notes_cubit.dart';

import '../../models/note_model.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllNotesCubit, GetAllNotesState>(
      builder: (context, state) {
        final List<NoteModel> notes = GetAllNotesCubit.get(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 15,
              );
            },
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return const NoteItem(
                body: "asd",
                title: 'adfaf',
              );
            },
          ),
        );
      },
    );
  }
}
