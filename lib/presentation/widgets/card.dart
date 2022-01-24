import "package:flutter/material.dart";

class RecomendPizzaCrad extends StatelessWidget {
  const RecomendPizzaCrad(
      {Key? key,
      required this.image,
      required this.title,
      required this.details,
      required this.price,
      //   required this.index,
      required this.onPress})
      : super(key: key);

  final String image, title, details;
  final double price;
  //final int index;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 16,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        child: Container(
          height: 1000,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      image,
                      width: 450,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(height: 5),
                      Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            details,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        price.toString() + " DT",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // Container(
                      //   height: 50,
                      //   margin: const EdgeInsets.all(10),
                      //   padding: const EdgeInsets.all(8),
                      //   decoration: BoxDecoration(
                      //       color: Colors.blue,
                      //       borderRadius: BorderRadius.circular(8)),
                      //   // child: TextButton(
                      //   //     onPressed: () {},
                      //   //     child: const Center(
                      //   //       child: Text(
                      //   //         "Commender",
                      //   //         style: TextStyle(color: Colors.white),
                      //   //       ),
                      //   //     )),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
// ignore: camel_case_types

}

// SizedBox(
//         height: 200,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(0),
//               child: Container(
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(10)),
//                 ),
//                 padding: const EdgeInsets.all(5),
//                 child: Image.asset(
//                   image,
//                   fit: BoxFit.cover,
//                   height: 200,
//                   width: 500,
//                 ),
//               ),
//             ),
//             Container(
//               height: 200,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(20),
//                     bottomRight: Radius.circular(20)),
//               ),
//               child: SizedBox(
//                 child: Column(
//                   children: [
//                     Center(
//                       child: SizedBox(
//                         height: 100,
//                         child: Text(
//                           title,
//                           style: const TextStyle(
//                               fontSize: 20, fontStyle: FontStyle.italic),
//                         ),
//                       ),
//                     ),
//                     Center(
//                       child: SizedBox(
//                         height: 100,
//                         child: TextSpan(

//                           details,
//                           style: const TextStyle(fontSize: 10),
//                         ),
//                       ),
//                     ),
//                     Center(
//                       child: SizedBox(
//                         height: 100,
//                         child: Text(
//                           price.toString(),
//                           style: TextStyle(
//                               fontSize: 30, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ));
//   }

// import "package:flutter/material.dart";

// class CardUI extends StatelessWidget {
//   final String image;
//   final String name;
//   final String position;

//   const CardUI(
//       {Key? key,
//       required this.image,
//       required this.name,
//       required this.position})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 700,
//       width: 700,
//       //elevation: 5.0,
//       child: SizedBox(
//         child: Padding(
//           padding: const EdgeInsets.all(5),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(1),
//                     color: Colors.blue,
//                   ),
//                   height: 250,
//                   width: 500,
//                   child: Image(
//                     image: AssetImage(image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   child: Center(
//                     child: Text(
//                       name,
//                       style: TextStyle(fontSize: 30),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
