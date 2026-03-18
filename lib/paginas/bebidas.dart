import 'package:flutter/material.dart';
import '../main.dart';

class Bebidas extends StatelessWidget {
  const Bebidas({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BEBIDAS")),
      drawer: const MenuLateral(),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12bebidas.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
