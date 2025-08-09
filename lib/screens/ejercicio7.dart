import 'package:flutter/material.dart';

class Ejercicio7Screen extends StatelessWidget {
  const Ejercicio7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'syh.png',
            ), // Asegúrate de tener la imagen en assets
            fit: BoxFit.contain, // Ajusta la imagen sin recortar
            alignment: Alignment.center, // Centra la imagen
          ),
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FloatingActionButton(
              onPressed: () => Navigator.pop(context),
              backgroundColor: Colors.black.withOpacity(0.5),
              elevation: 0,
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
    );
  }
}
