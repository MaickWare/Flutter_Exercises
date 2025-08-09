import 'package:flutter/material.dart';

class Ejercicio1Screen extends StatelessWidget {
  const Ejercicio1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Primera App con Flutter'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Text('¡Hola, mundo!', style: TextStyle(fontSize: 24)),
      ),
      // Puedes añadir más contenido aquí
    );
  }
}
