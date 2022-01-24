import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:j_pizza/bloC/cubit/screen_indicator_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetItems extends StatelessWidget {
  GetItems(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.index})
      : super(key: key);
  String imagePath;
  String title;
  int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GestureDetector(
        onTap: () => BlocProvider.of<ScreenIndicatorCubit>(context)
            .onChangeScreen(index > 8 ? 0 : index, title),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 16,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Image(
                  image: AssetImage(imagePath),
                  height: 110,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
