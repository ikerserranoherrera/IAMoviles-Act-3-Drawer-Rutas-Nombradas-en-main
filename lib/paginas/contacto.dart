import 'package:flutter/material.dart';
import '../main.dart';

class Contacto extends StatelessWidget {
  const Contacto({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CONTACTO")),
      drawer: const MenuLateral(),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/contacti%C3%B1o.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
