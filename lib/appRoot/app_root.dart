import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_hive/core/utils/app_settings.dart';
import 'package:notes_app_with_hive/cubits/get_all_notes/get_all_notes_cubit.dart';
import '../cubits/add_note_cubit.dart/cubit/add_note_cubit.dart';
import '../views/notes_view.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    AppSettings.init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
        BlocProvider(
          create: (context) => GetAllNotesCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const NotesView(),
      ),
    );
  }
}
