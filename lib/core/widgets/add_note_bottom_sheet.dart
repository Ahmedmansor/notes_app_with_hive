import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_hive/core/utils/navigation.dart';
import 'package:notes_app_with_hive/cubits/add_note_cubit.dart/cubit/add_note_cubit.dart';
import 'package:notes_app_with_hive/cubits/get_all_notes/get_all_notes_cubit.dart';

import 'add_note_bottom_sheet_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSucess) {
          NavigationUtils.offScreen(context);
          GetAllNotesCubit.get(context).getAllNotes();
        }
        if (state is AddNoteError) {
          debugPrint('error ${state.error}');
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
                left: 16,
                right: 16,
                // to deal with keyboard in bottom sheet & make bottom sheet scrollable
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: const SingleChildScrollView(child: AddNoteBottomSheetForm()),
          ),
        );
      },
    );
  }
}
