import 'package:flutter/material.dart';
import 'package:j_pizza/presentation/widgets/check_box_with_title.dart';

class OptionsX6 extends StatelessWidget {
  const OptionsX6({Key? key, required this.data, required this.title})
      : super(key: key);
  final List<String> data;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.blue,
              thickness: 2,
            ),
          ),
          Center(
              child: Text(
            title,
            style: const TextStyle(color: Colors.blue),
          )),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 150,
              width: 130,
              child: Column(
                children: [
                  CheckBoxWithTitle(itemTitle: data[0]),
                  CheckBoxWithTitle(itemTitle: data[1]),
                  CheckBoxWithTitle(itemTitle: data[4]),
                ],
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            SizedBox(
              height: 150,
              width: 130,
              child: Column(
                children: [
                  CheckBoxWithTitle(itemTitle: data[2]),
                  CheckBoxWithTitle(itemTitle: data[3]),
                  CheckBoxWithTitle(itemTitle: data[5]),
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
