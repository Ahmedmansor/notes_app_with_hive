import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_with_hive/core/utils/app_settings.dart';
import 'package:notes_app_with_hive/core/utils/navigation.dart';
import 'package:notes_app_with_hive/core/widgets/custom_app_bar.dart';
import 'package:notes_app_with_hive/core/widgets/custom_text_field.dart';
import 'package:notes_app_with_hive/cubits/get_all_notes/get_all_notes_cubit.dart';
import 'package:notes_app_with_hive/models/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppSettings.heightSpace(amountHeight: 0.06),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              GetAllNotesCubit.get(context).getAllNotes();

              NavigationUtils.offScreen(context);
            },
            text: 'Edit Note',
            icon: FontAwesomeIcons.check,
          ),
          AppSettings.heightSpace(amountHeight: 0.06),
          CustomTextField(
            onChanged: (p0) {
              widget.note.title = p0;
            },
            title: 'Title',
          ),
          AppSettings.heightSpace(amountHeight: 0.03),
          CustomTextField(
            onChanged: (p0) {
              widget.note.subtitle = p0;
            },
            title: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
