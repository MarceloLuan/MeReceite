import 'package:flutter/material.dart';
import 'package:projetofluttermereceite/Perfil.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Me Receite',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFF8F0),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD93636),
        ),
        fontFamily: 'Roboto',
      ),
      home: const Perfil(),
    );
  }
}

