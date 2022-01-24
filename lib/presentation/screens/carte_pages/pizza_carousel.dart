import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:j_pizza/bloC/cubit/pizzaforcommand_cubit.dart';
import 'package:j_pizza/bloC/cubit/screen_indicator_cubit.dart';
import 'package:j_pizza/constant.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:j_pizza/presentation/widgets/card.dart';

class PizzaCarousel extends StatefulWidget {
  const PizzaCarousel({Key? key}) : super(key: key);

  @override
  _PizzaCarouselState createState() => _PizzaCarouselState();
}

class _PizzaCarouselState extends State<PizzaCarousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: CarouselSlider(
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height * .7,
              initialPage: 1,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true),
          items: pizzas
              .map((element) => InkWell(
                    onTap: () {
                      BlocProvider.of<ScreenIndicatorCubit>(context)
                          .onChangeScreen(9, element.title);
                      BlocProvider.of<PizzaforcommandCubit>(context)
                          .onChangeData(element);
                    },
                    child: RecomendPizzaCrad(
                      // index: 9,
                      image: element.imagepath,
                      price: element.price,
                      title: element.title,
                      details: element.details,
                      onPress: () => {},
                    ),
                  ))
              .toList(),
        ),
      ),
    ));
  }
}
