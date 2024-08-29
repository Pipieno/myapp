import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a marca de debug no canto superior direito
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tela com Três Botões'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Ação para o primeiro botão
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Define o raio das bordas arredondadas
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Tamanho do botão
                ),
                child: const Text('Botão redondo'),
              ),
              const SizedBox(height: 20), // Espaço entre os botões
              ElevatedButton(
                onPressed: () {
                  // Ação para o segundo botão
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Cor de fundo personalizada
                  foregroundColor: Colors.white, // Cor do texto do botão
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Tamanho do botão
                  textStyle: const TextStyle(fontSize: 16), // Tamanho da fonte do texto
                ),
                child: const Text('Botão colorido'),
              ),
              const SizedBox(height: 20), // Espaço entre os botões
              ElevatedButton(
                onPressed: () {
                  // Ação para o terceiro botão
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Tamanho do botão
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.favorite, color: Color.fromARGB(255, 221, 4, 4)), // Ícone desejado
                    SizedBox(width: 10), // Espaço entre o ícone e o texto
                    Text('Botão com icone'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
