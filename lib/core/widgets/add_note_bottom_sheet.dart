import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/colors.dart';
import 'package:notes_app_with_hive/core/utils/app_settings.dart';
import 'package:notes_app_with_hive/core/widgets/custom_button.dart';
import 'package:notes_app_with_hive/cubits/cubit/main_cubit.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatelessWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var mainCubit = MainCubit.get(context);

    return Form(
      key: mainCubit.formKey,
      autovalidateMode: mainCubit.autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          CustomTextField(
            title: 'title',
            onSaved: (value) {
              mainCubit.title = value;
            },
            validator: (p0) {
              if (p0?.isEmpty ?? true) {
                return 'Please enter title';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            title: 'content',
            maxLines: 5,
            onSaved: (p0) {
              mainCubit.content = p0;
            },
            validator: (p0) {
              if (p0?.isEmpty ?? true) {
                return 'Please enter content';
              }
              return null;
            },
          ),
          SizedBox(
            height: AppSettings.height * 0.1,
          ),
          SizedBox(
            width: AppSettings.width,
            child: CustomButton(
              backgroundColor: ColorsApp.kPrimaryColor,
              onPressed: () {
                mainCubit.validate();
              },
              text: 'Add',
              textColor: Colors.black,
            ),
          ),
          SizedBox(
            height: AppSettings.height * 0.02,
          ),
        ],
      ),
    );
  }
}
