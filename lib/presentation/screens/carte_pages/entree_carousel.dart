import 'package:flutter/material.dart';

class Entree extends StatefulWidget {
  const Entree({Key? key}) : super(key: key);

  @override
  _EntreeState createState() => _EntreeState();
}

class _EntreeState extends State<Entree> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Entree"),
    );
  }
}
