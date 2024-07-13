import 'package:flutter_bloc/flutter_bloc.dart';

abstract class MyState {}

class InitialState extends MyState {}

class ShowTextState extends MyState {}

class ShowImageState extends MyState {}

class ShowCircleState extends MyState {}

class ResetState extends MyState {}

class MyCubit extends Cubit<MyState> {
  MyCubit() : super(InitialState());

  void showText() {
    emit(ShowTextState());
  }

  void showImage() {
    emit(ShowImageState());
  }

  void showCircle() {
    emit(ShowCircleState());
  }

  void reset() {
    emit(InitialState());
  }
}
