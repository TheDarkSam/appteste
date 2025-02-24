import 'package:appteste/service/gerador_numeros.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(child: Text(numeroGerado.toString())),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.calculate),
        onPressed: () {
          setState(() {
            numeroGerado = GeradorNumeros.gerarNumeroAleatorio(100);
          });
        },
      ),
    );
  }
}
