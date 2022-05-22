import 'package:flutter/material.dart';
import 'package:parcial4/app/ui/paginas/home/principal.dart';

void main() {
  runApp(Parcial4());
}

class Parcial4 extends StatelessWidget {
  const Parcial4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: PrincipalPage(),
    );
  }
}
