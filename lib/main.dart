import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Remove a marca de debug no canto superior direito
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tela com Textos e Botões'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Primeiro texto: Negrito e Sublinhado
              Text(
                'Texto 1: Negrito e Sublinhado',
                style: const TextStyle(
                  fontWeight: FontWeight.bold, // Negrito
                  decoration: TextDecoration.underline, // Sublinhado
                ),
              ),
              const SizedBox(height: 20), // Espaço entre os textos
              // Segundo texto: Itálico e Cor Azul
              Text(
                'Texto 2: Itálico e Azul',
                style: const TextStyle(
                  fontStyle: FontStyle.italic, // Itálico
                  color: Colors.blue, // Cor azul
                ),
              ),
              const SizedBox(height: 20), // Espaço entre os textos
              // Terceiro texto: Tamanho de fonte aumentado e Centralizado
              Text(
                'Texto 3: Tamanho Aumentado e Centralizado',
                style: const TextStyle(
                  fontSize: 24, // Tamanho da fonte aumentado
                ),
                textAlign: TextAlign.center, // Centraliza o texto
              ),
              const SizedBox(height: 40), // Espaço entre os textos e botões
              // Primeiro botão: Redondo
              ElevatedButton(
                onPressed: () {
                  // Ação para o primeiro botão
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30), // Define o raio das bordas arredondadas
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15), // Tamanho do botão
                ),
                child: const Text('Botão 1'),
              ),
              const SizedBox(height: 20), // Espaço entre os botões
              // Segundo botão: Com cor personalizada
              ElevatedButton(
                onPressed: () {
                  // Ação para o segundo botão
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Cor de fundo personalizada
                  foregroundColor: Colors.white, // Cor do texto do botão
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15), // Tamanho do botão
                  textStyle: const TextStyle(
                      fontSize: 16), // Tamanho da fonte do texto
                ),
                child: const Text('Botão 2'),
              ),
              const SizedBox(height: 20), // Espaço entre os botões
              // Terceiro botão: Com ícone
              ElevatedButton(
                onPressed: () {
                  // Ação para o terceiro botã
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15), // Tamanho do botão
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.favorite, color: Colors.white), // Ícone desejado
                    SizedBox(width: 10), // Espaço entre o ícone e o texto
                    Text('Botão 3'),
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
