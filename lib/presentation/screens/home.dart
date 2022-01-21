import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_pizza/bloC/cubit/screen_indicator_cubit.dart';
import 'package:j_pizza/bloC/cubit/screen_indicator_state.dart';
import 'package:j_pizza/constant.dart';
import 'package:j_pizza/presentation/screens/carte_pages/boissan_carousel.dart';
import 'package:j_pizza/presentation/screens/carte_pages/carte.dart';
import 'package:j_pizza/presentation/screens/carte_pages/dessert_carousel.dart';
import 'package:j_pizza/presentation/screens/carte_pages/entree_carousel.dart';
import 'package:j_pizza/presentation/screens/carte_pages/pizza_details.dart';
import 'package:j_pizza/presentation/screens/carte_pages/sandwich_carousel.dart';
import 'package:j_pizza/presentation/screens/formules.dart';
import 'package:j_pizza/presentation/screens/panier.dart';
import 'package:j_pizza/presentation/screens/carte_pages/pizza_carousel.dart';
import 'package:j_pizza/presentation/screens/promotion.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScreenIndicatorCubit, ScreenIndicator>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.menu,
              color: Colors.blue,
            ),
            title: state.indicator < 4
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image(
                        height: 60,
                        image: AssetImage('assets/logo.png'),
                      ),
                    ),
                  )
                : Center(
                    child: Text(
                      state.title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
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
          body: screens[state.indicator],

          // ignore: void_checks

          // IndexedStack(
          //   children: screens,
          //   index: _currentIndex,
          // )

          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.blue,
            selectedFontSize: 18,
            currentIndex: _currentIndex,
            onTap: (index) => {
              BlocProvider.of<ScreenIndicatorCubit>(context)
                  .onChangeScreen(index, "")
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
      },
    );
  }
}







//////////////////////////////
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:j_pizza/bloC/cubit/screen_indicator_cubit.dart';
// import 'package:j_pizza/bloC/cubit/screen_indicator_state.dart';
// import 'package:j_pizza/presentation/screens/carte_pages/boissan_carousel.dart';
// import 'package:j_pizza/presentation/screens/carte_pages/carte.dart';
// import 'package:j_pizza/presentation/screens/carte_pages/dessert_carousel.dart';
// import 'package:j_pizza/presentation/screens/carte_pages/entree_carousel.dart';
// import 'package:j_pizza/presentation/screens/carte_pages/sandwich_carousel.dart';
// import 'package:j_pizza/presentation/screens/formules.dart';
// import 'package:j_pizza/presentation/screens/panier.dart';
// import 'package:j_pizza/presentation/screens/carte_pages/pizza_carousel.dart';
// import 'package:j_pizza/presentation/screens/promotion.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final int _currentIndex = 0;
//   final screens = [
//     Carte(),
//     const Formules(),
//     const Promotion(),
//     const Panier(),
//     const PizzaCarousel(),
//     const Entree(),
//     const SandwitchsCarousel(),
//     const BoissanCarousel(),
//     const DessertCarousel()
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Icon(
//           Icons.menu,
//           color: Colors.blue,
//         ),
//         title: const Center(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             child: Image(
//               height: 60,
//               image: AssetImage('assets/logo.png'),
//             ),
//           ),
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 15.0),
//             child: Icon(
//               Icons.home,
//               color: Colors.blue,
//             ),
//           )
//         ],
//       ),
//       body: BlocConsumer<ScreenIndicatorCubit, ScreenIndicator>(
//         builder: (context, state) {
//           // ignore: void_checks
//           return screens[state.indicator];
//         },
//         listener: (context, state) {},
//       )
//       // IndexedStack(
//       //   children: screens,
//       //   index: _currentIndex,
//       // )
//       ,
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.red,
//         type: BottomNavigationBarType.fixed,
//         unselectedItemColor: Colors.blue,
//         selectedFontSize: 18,
//         currentIndex: _currentIndex,
//         onTap: (index) => {
//           BlocProvider.of<ScreenIndicatorCubit>(context).onChangeScreen(index)
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: SizedBox(
//                 child: Image(
//               image: AssetImage(
//                 "assets/pizza.png",
//               ),
//               height: 40,
//             )),
//             label: "Carte",
//           ),
//           BottomNavigationBarItem(
//             icon: SizedBox(
//                 child: Image(
//               image: AssetImage(
//                 "assets/pizza_with_coke.png",
//               ),
//               height: 40,
//             )),
//             label: "Formules",
//           ),
//           BottomNavigationBarItem(
//             icon: SizedBox(
//                 child: Image(
//               image: AssetImage(
//                 "assets/discount.png",
//               ),
//               height: 40,
//             )),
//             label: "Promotions",
//           ),
//           BottomNavigationBarItem(
//             icon: SizedBox(
//                 child: Image(
//               image: AssetImage(
//                 "assets/shopping_basket.png",
//               ),
//               height: 40,
//             )),
//             label: "Panier",
//           )
//         ],
//       ),
//     );
//   }
// }
