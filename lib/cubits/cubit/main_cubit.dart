import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());
//Create Validate form
  static MainCubit get(context) => BlocProvider.of(context);

  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  void validate() {
    if (formKey.currentState!.validate()) {
      formKey.currentState?.save();
      emit(TextFormFieldValidateSucess());
    } else {
      autovalidateMode = AutovalidateMode.always;
      emit(TextFormFieldValidateError());
    }
  }
}
