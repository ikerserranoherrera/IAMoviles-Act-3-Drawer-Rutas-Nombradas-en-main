import 'package:flutter/material.dart';
import '../main.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CARL'S JR.")),
      drawer: const MenuLateral(),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
