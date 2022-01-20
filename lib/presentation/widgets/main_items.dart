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
            .onChangeScreen(index > 8 ? 0 : index),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: [
                Image(
                  image: AssetImage(imagePath),
                  width: 80,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(title)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
