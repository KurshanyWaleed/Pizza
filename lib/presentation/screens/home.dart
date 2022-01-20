import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza/bloC/cubit/screen_indicator_cubit.dart';
import 'package:j_pizza/bloC/cubit/screen_indicator_state.dart';
import 'package:j_pizza/presentation/screens/boissan.dart';
import 'package:j_pizza/presentation/screens/carte.dart';
import 'package:j_pizza/presentation/screens/formules.dart';
import 'package:j_pizza/presentation/screens/panier.dart';
import 'package:j_pizza/presentation/screens/pizza_details.dart';
import 'package:j_pizza/presentation/screens/promotion.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final screens = [
    Carte(),
    Promotion(),
    Formules(),
    Panier(),
    PizzaCarousel(),
    Boissan()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: Image(
            height: 60,
            image: AssetImage('assets/logo.png'),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: BlocConsumer<ScreenIndicatorCubit, ScreenIndicator>(
        builder: (context, state) {
          // ignore: void_checks
          return screens[state.indicator];
        },
        listener: (context, state) {},
      )
      // IndexedStack(
      //   children: screens,
      //   index: _currentIndex,
      // )
      ,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blue,
        selectedFontSize: 18,
        currentIndex: _currentIndex,
        onTap: (index) => {
          BlocProvider.of<ScreenIndicatorCubit>(context).onChangeScreen(index)
        },
        items: const [
          BottomNavigationBarItem(
            icon: SizedBox(
                child: Image(
              image: AssetImage(
                "assets/pizza.png",
              ),
              height: 40,
            )),
            label: "Carte",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                child: Image(
              image: AssetImage(
                "assets/pizza_with_coke.png",
              ),
              height: 40,
            )),
            label: "Formules",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                child: Image(
              image: AssetImage(
                "assets/discount.png",
              ),
              height: 40,
            )),
            label: "Promotions",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                child: Image(
              image: AssetImage(
                "assets/shopping_basket.png",
              ),
              height: 40,
            )),
            label: "Panier",
          )
        ],
      ),
    );
  }
}
