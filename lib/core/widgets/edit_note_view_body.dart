import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_with_hive/core/utils/app_settings.dart';
import 'package:notes_app_with_hive/core/widgets/custom_app_bar.dart';
import 'package:notes_app_with_hive/core/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppSettings.heightSpace(amountHeight: 0.06),
          const CustomAppBar(
            text: 'Edit Note',
            icon: FontAwesomeIcons.trash,
          ),
          AppSettings.heightSpace(amountHeight: 0.06),
          const CustomTextField(
            title: 'edit',
          ),
        ],
      ),
    );
  }
}
