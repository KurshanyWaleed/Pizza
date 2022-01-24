import 'package:bloc/bloc.dart';
import 'package:j_pizza/constant.dart';

import 'package:j_pizza/data/pizza.dart';

part 'pizzaforcommand_state.dart';

class PizzaforcommandCubit extends Cubit<Pizzaforcommand> {
  PizzaforcommandCubit()
      : super(
          Pizzaforcommand(
            pizza: Pizza(
                price: 0,
                imagepath: "assets/pizza.png",
                title: "vide",
                details: "vide"),
          ),
        );

  void onChangeData(Pizza pza) {
    emit(Pizzaforcommand(pizza: pza));
  }

  void onUapdatePrice(Pizza pza, double value) {
    pza.updatePIzzaPrice(value);
    print(pza.price);
    emit(Pizzaforcommand(pizza: pza));
  }

  // void onUpdate(double addition , pza) {
  //   emit(Pizzaforcommand(pizza: pza));
  // }
}
