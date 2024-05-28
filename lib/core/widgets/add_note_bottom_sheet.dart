import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_with_hive/colors.dart';
import 'package:notes_app_with_hive/core/utils/app_settings.dart';
import 'package:notes_app_with_hive/core/utils/navigation.dart';
import 'package:notes_app_with_hive/core/widgets/custom_button.dart';
import 'package:notes_app_with_hive/cubits/add_note_cubit.dart/cubit/add_note_cubit.dart';
import 'package:notes_app_with_hive/cubits/cubit/main_cubit.dart';

import 'add_note_bottom_sheet_form.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSucess) {
            NavigationUtils.offScreen(context);
          }
          if (state is AddNoteError) {
            debugPrint('error ${state.error}');
          }
        },
        builder: (context, state) {
          return const SingleChildScrollView(child: AddNoteForm());
        },
      ),
    );
  }
}
