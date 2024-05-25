import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app_with_hive/core/utils/app_settings.dart';
import 'package:notes_app_with_hive/core/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          AppSettings.heightSpace(amountHeight: 0.06),
          const CustomTextField(
            title: 'edit',
          ),
        ],
      ),
    );
  }
}
