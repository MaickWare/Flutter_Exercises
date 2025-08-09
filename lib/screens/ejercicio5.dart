import 'package:flutter/material.dart';

class Ejercicio5Screen extends StatefulWidget {
  const Ejercicio5Screen({super.key});

  @override
  _Ejercicio5ScreenState createState() => _Ejercicio5ScreenState();
}

class _Ejercicio5ScreenState extends State<Ejercicio5Screen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> items = ['Manzana', 'Banana', 'Pera', 'Uva'];
  final List<String> newItems = [];

  void _addItem() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        newItems.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Frutas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Sección para añadir nuevos elementos
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Añadir nueva fruta',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _addItem(),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.add, size: 32),
                  onPressed: _addItem,
                ),
              ],
            ),
            SizedBox(height: 20),

            // Encabezado de la lista
            Text(
              'Mis Frutas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Lista de elementos
            Expanded(
              child: ListView.builder(
                itemCount: items.length + newItems.length,
                itemBuilder: (context, index) {
                  final item = index < items.length
                      ? items[index]
                      : newItems[index - items.length];

                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      leading: Icon(Icons.food_bank, color: Colors.green),
                      title: Text(item),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            if (index >= items.length) {
                              newItems.removeAt(index - items.length);
                            }
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
