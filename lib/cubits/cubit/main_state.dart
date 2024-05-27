part of 'main_cubit.dart';

@immutable
sealed class MainState {}

final class MainInitial extends MainState {}
//! -------------------------

class TextFormFieldValidateSucess extends MainState {}

class TextFormFieldValidateError extends MainState {}
