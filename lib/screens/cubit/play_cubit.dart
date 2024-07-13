import 'package:flutter_bloc/flutter_bloc.dart';

class PlayCubit extends Cubit<int> {
  PlayCubit() : super(0);

  void selectItem(int index) => emit(index);
}
