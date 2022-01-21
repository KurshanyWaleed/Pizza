import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pizzaforcommand_state.dart';

class PizzaforcommandCubit extends Cubit<PizzaforcommandState> {
  PizzaforcommandCubit() : super(PizzaforcommandInitial());
}
