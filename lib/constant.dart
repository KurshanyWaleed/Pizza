import 'package:flutter/material.dart';
import 'package:j_pizza/presentation/screens/carte_pages/boissan_carousel.dart';
import 'package:j_pizza/presentation/screens/carte_pages/dessert_carousel.dart';
import 'package:j_pizza/presentation/screens/carte_pages/entree_carousel.dart';
import 'package:j_pizza/presentation/screens/carte_pages/pizza_carousel.dart';
import 'package:j_pizza/presentation/screens/carte_pages/pizza_details.dart';
import 'package:j_pizza/presentation/screens/carte_pages/sandwich_carousel.dart';
import 'package:j_pizza/presentation/screens/formules.dart';
import 'package:j_pizza/presentation/screens/panier.dart';
import 'package:j_pizza/presentation/screens/promotion.dart';

import 'presentation/screens/carte_pages/carte.dart';

const MaterialColor white = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

final screens = [
  Carte(),
  const Formules(),
  const Promotion(),
  const Panier(),
  const PizzaCarousel(),
  const Entree(),
  const SandwitchsCarousel(),
  const BoissanCarousel(),
  const DessertCarousel(),
  const PizzaDetails()
];
