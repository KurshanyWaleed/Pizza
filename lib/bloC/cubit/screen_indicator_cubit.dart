import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza/bloC/cubit/screen_indicator_state.dart';

class ScreenIndicatorCubit extends Cubit<ScreenIndicator> {
  ScreenIndicatorCubit() : super(ScreenIndicator(indicator: 0, title: ""));

  void onChangeScreen(int index, String title) {
    emit(ScreenIndicator(indicator: index, title: title));
  }
}
