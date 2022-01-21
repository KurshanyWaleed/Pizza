import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:j_pizza/data/pizza.dart';
import 'package:j_pizza/presentation/widgets/card.dart';

class PizzaCarousel extends StatefulWidget {
  const PizzaCarousel({Key? key}) : super(key: key);

  @override
  _PizzaCarouselState createState() => _PizzaCarouselState();
}

class _PizzaCarouselState extends State<PizzaCarousel> {
  final List<Pizza> pizzas = [
    Pizza(
        imagepath: "assets/pizza_images/california_pizza.png",
        title: "California Pizza",
        details:
            "Your choice to use either thin or thick crust will determine how you will bake your pizza",
        price: 28.500),
    Pizza(
        imagepath: "assets/pizza_images/detroi_pizza.png",
        title: "Detrio Pizza",
        details:
            "Pepperoni, brick cheese usually Wisconsin brick cheese, and tomato sauce. Other typical toppings include mushrooms and olives",
        price: 10.000),
    Pizza(
        imagepath: "assets/pizza_images/chicago_pizza.png",
        title: "Chicago Pizza",
        details:
            "Ground beef, sausage, pepperoni, onion, mushrooms, and green peppers, placed underneath the tomato sauce. plus some sprinkle of Parmesan cheese across the tomato sauce.",
        price: 9.000),
    Pizza(
        imagepath: "assets/pizza_images/greek_pizza.png",
        title: "Greek Pizza",
        details:
            "America and were introduced to Italian pizza. Greek-style pizza,features a thick and chewy crust cooked in shallow, oiled pans",
        price: 18.000),
    Pizza(
        imagepath: "assets/pizza_images/luis_pizza.png",
        title: "Luis Pizza",
        details: "Sweeter tomato sauce with a hefty dosage of oregano.",
        price: 35.000),
    Pizza(
        imagepath: "assets/pizza_images/neapolitalo_pizza.png",
        title: "Neapolitano Pizza",
        details:
            "Fresh mozzarella, tomatoes, basil leaves, oregano, and olive oil. Since Neapolitan pizza is thin, ",
        price: 28.500),
    Pizza(
        imagepath: "assets/pizza_images/newyork_pizza.png",
        title: "New York Pizza",
        details:
            "With its characteristic large, foldable slices and crispy outer crust, New York-style pizza is one of America’s most famous regional pizza types.",
        price: 8.000),
    Pizza(
        imagepath: "assets/pizza_images/sicilian_pizza.png",
        title: "Sicilain Pizza",
        details:
            "Sicilian pizzas are often topped with bits of tomato, onion, anchovies, and herbs.",
        price: 5.000),
  ];
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
              .map((e) => RecomendPizzaCrad(
                    index: pizzas.indexOf(e) + 7,
                    image: e.imagepath,
                    price: e.price,
                    title: e.title,
                    details: e.details,
                    onPress: () => {},
                  ))
              .toList(),
        ),
      ),
    ));
  }
}
