import 'package:flutter/material.dart';
import 'screens/ejercicio1.dart';
import 'screens/ejercicio2.dart';
import 'screens/ejercicio3.dart';
import 'screens/ejercicio4.dart';
import 'screens/ejercicio5.dart';
import 'screens/ejercicio6.dart';
import 'screens/ejercicio7.dart';
import 'screens/ejercicio8.dart';
import 'screens/ejercicio9.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ejercicios',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        '/ej1': (context) => Ejercicio1Screen(),
        '/ej2': (context) => Ejercicio2Screen(),
        '/ej3': (context) => Ejercicio3Screen(),
        '/ej4': (context) => Ejercicio4Screen(),
        '/ej5': (context) => Ejercicio5Screen(),
        '/ej6': (context) => Ejercicio6Screen(),
        '/ej7': (context) => Ejercicio7Screen(),
        '/ej8': (context) => Ejercicio8Screen(),
        '/ej9': (context) => Ejercicio9Screen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicios Flutter'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildExerciseButton(context, 'Ejercicio 1', 'Pantalla Básica', '/ej1'),
          _buildExerciseButton(context, 'Ejercicio 2', 'Manejo de Columnas y Filas (Layouts)', '/ej2'),
          _buildExerciseButton(context, 'Ejercicio 3', 'Manejo de Botones', '/ej3'),
          _buildExerciseButton(context, 'Ejercicio 4', 'Uso de TextField y controladores', '/ej4'),
          _buildExerciseButton(context, 'Ejercicio 5', 'SnackBar y Dialog', '/ej5'),
          _buildExerciseButton(context, 'Ejercicio 6', 'Contador Stateful', '/ej6'),
          _buildExerciseButton(context, 'Ejercicio 7', 'Mostrar Imagen', '/ej7'),
          _buildExerciseButton(context, 'Ejercicio 8', 'SnackBar y Dialog', '/ej8'),
          _buildExerciseButton(context, 'Ejercicio 9', 'API REST', '/ej9'),
        ],
      ),
    );
  }

  Widget _buildExerciseButton(BuildContext context, String title, String subtitle, String route) {
    return Card(
      margin: EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}