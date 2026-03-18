import 'package:flutter/material.dart';
import '../main.dart';

class Carrito extends StatelessWidget {
  const Carrito({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MI CARRITO")),
      drawer: const MenuLateral(),
      body: Center(
        child: Image.network('https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/carrito.jfif', width: 200, height: 200),
      ),
    );
  }
}