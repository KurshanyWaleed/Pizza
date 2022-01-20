import 'package:flutter/material.dart';
import 'package:j_pizza/presentation/widgets/main_items.dart';

class Carte extends StatelessWidget {
  Carte({Key? key}) : super(key: key);

  final items = [
    GetItems(imagePath: "assets/soft_drink.png", index: 5, title: "BOISSAN"),
    GetItems(imagePath: "assets/pizza_max.png", index: 4, title: "PIZZA"),
    GetItems(imagePath: "assets/cake.png", index: 6, title: "ENTREE"),
    GetItems(imagePath: "assets/sandwich.png", index: 7, title: "SANDWICHE"),
    GetItems(imagePath: "assets/cake_slice.png", index: 8, title: "DESSERT"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: items.length,
              itemBuilder: (BuildContext ctx, index) {
                return items[index];
              }),
        ),
      ),
    );
  }
}
// GridView(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2),

//               children:items.entries.map((mapE) => GetItems(
//                   index: ,
//                   title: mapE.key.toString(),
//                   imagePath: mapE.value.toString()))
//               .toList()
//           ),
//               physics: const BouncingScrollPhysics()),