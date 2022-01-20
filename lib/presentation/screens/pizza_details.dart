import 'package:flutter/material.dart';

class PizzaCarousel extends StatefulWidget {
  const PizzaCarousel({Key? key}) : super(key: key);

  @override
  _PizzaCarouselState createState() => _PizzaCarouselState();
}

class _PizzaCarouselState extends State<PizzaCarousel> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Carousel"),
    );
  }
}
