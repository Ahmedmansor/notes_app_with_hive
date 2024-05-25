import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/core/widgets/custom_app_bar.dart';
import 'package:notes_app_with_hive/core/widgets/notes_list_view.dart';

import '../utils/app_settings.dart';
import 'note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppSettings.heightSpace(amountHeight: 0.06),
          const CustomAppBar(
            text: 'Notes',
            icon: Icons.search,
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
