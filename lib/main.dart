import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza/bloC/cubit/pizzaforcommand_cubit.dart';
import 'package:j_pizza/presentation/screens/formules.dart';
import 'package:j_pizza/presentation/screens/panier.dart';
import 'bloC/cubit/screen_indicator_cubit.dart';
import 'constant.dart';
import 'presentation/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ScreenIndicatorCubit>(
            create: (context) => ScreenIndicatorCubit()),
        BlocProvider<PizzaforcommandCubit>(
            create: (context) => PizzaforcommandCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const HomePage(
          title: 'JOES PIZZA',
        ),
        theme: ThemeData(
          primarySwatch: white,
        ),
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/first': (context) => const Panier(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => const Panier(),
          '/third': (context) => const Panier(),
          '/fourth': (context) => const Panier(),
          '/fifth': (context) => const Panier(),
        },
      ),
    );
  }
}
