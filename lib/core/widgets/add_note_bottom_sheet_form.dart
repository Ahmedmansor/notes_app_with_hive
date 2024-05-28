import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_hive/colors.dart';
import 'package:notes_app_with_hive/core/widgets/custom_text_field.dart';
import 'package:notes_app_with_hive/cubits/add_note_cubit.dart/cubit/add_note_cubit.dart';
import '../utils/app_settings.dart';
import 'custom_button.dart';

class AddNoteBottomSheetForm extends StatelessWidget {
  const AddNoteBottomSheetForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var addnoteCubit = AddNoteCubit.get(context);

    return Form(
      key: addnoteCubit.formKey,
      autovalidateMode: addnoteCubit.autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          CustomTextField(
            title: 'title',
            onSaved: (value) {
              addnoteCubit.title = value;
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
              addnoteCubit.content = p0;
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
            child: BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  backgroundColor: ColorsApp.kPrimaryColor,
                  onPressed: () {
                    addnoteCubit.validate();
                  },
                  text: 'Add',
                  textColor: Colors.black,
                  isLoading: state is AddNoteLoading,
                );
              },
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
