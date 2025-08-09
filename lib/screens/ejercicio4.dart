import 'package:flutter/material.dart';

class Ejercicio4Screen extends StatefulWidget {
  const Ejercicio4Screen({super.key});

  @override
  _Ejercicio4ScreenState createState() => _Ejercicio4ScreenState();
}

class _Ejercicio4ScreenState extends State<Ejercicio4Screen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose(); // Importante liberar memoria
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Texto'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Ingresa tu texto',
                border: OutlineInputBorder(),
                hintText: 'Escribe algo...',
                prefixIcon: Icon(Icons.edit),
              ),
              keyboardType: TextInputType.text,
              maxLines: 1,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Texto ingresado: ${_controller.text}');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Texto ingresado: ${_controller.text}'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Mostrar Texto', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
