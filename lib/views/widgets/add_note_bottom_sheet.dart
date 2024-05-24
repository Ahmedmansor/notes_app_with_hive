import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/colors.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          CustomTextField(
            title: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            title: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
