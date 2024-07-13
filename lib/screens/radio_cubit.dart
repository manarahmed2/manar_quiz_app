// radio_cubit.dart
import 'package:bloc/bloc.dart';

class RadioCubit extends Cubit<int> {
  RadioCubit() : super(0);

  void selectRadio(int index) => emit(index);
}
