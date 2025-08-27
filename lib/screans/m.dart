import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de "debug"
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        body: Center(
          child: Container(
            width: 280, // Aumentei um pouco a largura para os campos
            height: 500,
            padding: const EdgeInsets.all(25.0), // Padding geral para todo o conteúdo
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            // Usamos uma Coluna para empilhar os widgets verticalmente
            child: Column(
              // Alinha os filhos no topo da coluna
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // 1. Título "Login"
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28, // Aumentei um pouco a fonte
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Espaçamento entre o título e o primeiro campo
                const SizedBox(height: 40),

                // 2. Campo de Email
                TextField(
                  keyboardType: TextInputType.emailAddress, // Teclado otimizado para email
                  style: const TextStyle(color: Colors.white), // Cor do texto digitado
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    prefixIcon: const Icon(Icons.email_outlined, color: Colors.white),
                    // Bordas
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                // Espaçamento entre os campos
                const SizedBox(height: 20),

                // 3. Campo de Senha
                TextField(
                  obscureText: true, // Esconde o texto da senha
                  style: const TextStyle(color: Colors.white), // Cor do texto digitado
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    prefixIcon: const Icon(Icons.lock_outline, color: Colors.white),
                    // Bordas
                     enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}