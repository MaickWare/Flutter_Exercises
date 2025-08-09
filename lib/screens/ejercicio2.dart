import 'package:flutter/material.dart';

class Ejercicio2Screen extends StatelessWidget {
  const Ejercicio2Screen({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Texto original de ej1.dart
          Text('¡Hola, mundo!', style: TextStyle(fontSize: 24)),
          SizedBox(height: 30), // Espacio entre elementos
          // Fila de iconos
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, size: 40),
              Icon(Icons.star, size: 40, color: Colors.amber),
              Icon(Icons.settings, size: 40),
            ],
          ),
          SizedBox(height: 20),

          // Texto descriptivo
          Text(
            'Distribución con Row y Column',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 30),

          // Puedes añadir más contenido aquí
          ElevatedButton(
            onPressed: () {
              // Acción del botón
            },
            child: Text('Presiona aquí'),
          ),
        ],
      ),
    );
  }
}
