import 'package:flutter/material.dart';
import 'package:learning_b/widgets/content_column.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            ContentColumn(title: 'Primer columna', text: 'Primer parrafo',),
            ContentColumn(title: 'Segunda columna', text: 'Segundo parrafo',),
            ContentColumn(title: 'Tercer columna', text: 'Tercer parrafo',),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('click'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        child: const Icon(Icons.home),
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

