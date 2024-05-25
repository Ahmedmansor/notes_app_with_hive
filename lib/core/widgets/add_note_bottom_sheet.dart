import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/colors.dart';
import 'package:notes_app_with_hive/core/utils/app_settings.dart';
import 'package:notes_app_with_hive/core/widgets/custom_button.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 36,
            ),
            const CustomTextField(
              title: 'title',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              title: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: AppSettings.height * 0.1,
            ),
            SizedBox(
              width: AppSettings.width,
              child: CustomButton(
                backgroundColor: ColorsApp.kPrimaryColor,
                onPressed: () {},
                text: 'Add',
                textColor: Colors.black,
              ),
            ),
            SizedBox(
              height: AppSettings.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
