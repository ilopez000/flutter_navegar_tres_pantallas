import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Ejemplo de Navegación',
    home: PrimeraPantalla(),
  ));
}

class PrimeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('AVANZAR'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaPantalla()),
            );
          },
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Pantalla"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceraPantalla()),
                );
              },
              child: const Text("AVANZAR"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("RETROCEDER"),
            )
          ],
        ),
      ),
    );
  }
}

class TerceraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercera Pantalla"),
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("RETROCEDER"),
          )
      ),
    );
  }
}