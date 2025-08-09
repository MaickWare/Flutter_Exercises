import 'package:flutter/material.dart';

class Ejercicio3Screen extends StatelessWidget {
  const Ejercicio3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Flutter Integrada'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. Texto original de ej1.dart mejorado
          Text(
            '¡Explora Flutter!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 30),

          // 2. Fila de iconos con funcionalidad
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home, size: 40),
                onPressed: () => print('Inicio presionado'),
              ),
              IconButton(
                icon: Icon(Icons.star, size: 40, color: Colors.amber),
                onPressed: () => print('Favorito presionado'),
              ),
              IconButton(
                icon: Icon(Icons.settings, size: 40),
                onPressed: () => print('Configuración presionada'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Controla tu aplicación con estos iconos',
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),

          SizedBox(height: 40),

          // 3. Botón elevado con más estilo
          ElevatedButton(
            onPressed: () {
              print('Acción principal ejecutada');
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('¡Acción completada!')));
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text('Acción Principal', style: TextStyle(fontSize: 18)),
          ),

          SizedBox(height: 20),

          // Botón adicional para demostración
          OutlinedButton(
            onPressed: () => print('Acción secundaria'),
            child: Text('Más opciones'),
          ),
        ],
      ),
    );
  }
}
