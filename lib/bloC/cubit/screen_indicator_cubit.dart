import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:j_pizza/presentation
// /screens/carte.dart';
// import 'package:j_pizza/presentation/screens/formules.dart';
// import 'package:j_pizza/presentation/screens/panier.dart';
// import 'package:j_pizza/presentation/screens/pizza_details.dart';
// import 'package:j_pizza/presentation/screens/promotion.dart';
import 'package:j_pizza/bloC/cubit/screen_indicator_state.dart';

class ScreenIndicatorCubit extends Cubit<ScreenIndicator> {
  ScreenIndicatorCubit() : super(ScreenIndicator(indicator: 0));

  void onChangeScreen(int index) {
    emit(ScreenIndicator(indicator: index));
  }
}
