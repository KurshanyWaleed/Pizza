import 'package:flutter/material.dart';
import 'package:j_pizza/bloC/cubit/pizzaforcommand_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxWithTitleChecked extends StatefulWidget {
  const CheckBoxWithTitleChecked({
    Key? key,
    required this.itemTitle,
  }) : super(key: key);

  final String itemTitle;

  @override
  State<CheckBoxWithTitleChecked> createState() =>
      _CheckBoxWithTitleCheckedState();
}

class _CheckBoxWithTitleCheckedState extends State<CheckBoxWithTitleChecked> {
  bool _checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            checkColor: Colors.blue,
            activeColor: Colors.blue,
            value: _checkBoxValue,
            onChanged: (bool? val) {
              setState(() {
                _checkBoxValue = val!;
              });
            }),
        Flexible(
            child: Text(
          widget.itemTitle,
          style:
              const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        )),
      ],
    );
  }
}

class CheckBoxWithTitle extends StatefulWidget {
  const CheckBoxWithTitle({
    Key? key,
    required this.itemTitle,
  }) : super(key: key);

  final String itemTitle;

  @override
  State<CheckBoxWithTitle> createState() => _CheckBoxWithTitleState();
}

class _CheckBoxWithTitleState extends State<CheckBoxWithTitle> {
  bool _checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PizzaforcommandCubit, Pizzaforcommand>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
                checkColor: Colors.blue,
                activeColor: Colors.blue,
                value: _checkBoxValue,
                onChanged: (bool? val) {
                  _checkBoxValue == false
                      ? BlocProvider.of<PizzaforcommandCubit>(context)
                          .onUapdatePrice(state.pizza, 2)
                      : BlocProvider.of<PizzaforcommandCubit>(context)
                          .onUapdatePrice(state.pizza, -2);

                  setState(() {
                    _checkBoxValue = val!;
                  });
                }),
            Flexible(
                child: Text(
              widget.itemTitle,
              style: const TextStyle(
                  color: Colors.blue, fontWeight: FontWeight.bold),
            )),
          ],
        );
      },
    );
  }
}
