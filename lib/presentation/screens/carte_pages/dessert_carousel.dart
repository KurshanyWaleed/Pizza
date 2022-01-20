import 'package:flutter/material.dart';

class DessertCarousel extends StatefulWidget {
  const DessertCarousel({Key? key}) : super(key: key);

  @override
  _DessertCarouselState createState() => _DessertCarouselState();
}

class _DessertCarouselState extends State<DessertCarousel> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Dessert Carousel"),
    );
  }
}
