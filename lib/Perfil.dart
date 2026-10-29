import 'package:flutter/material.dart';

const vermelho = Color(0xFFD93636);
const creme = Color(0xFFFFF8F0);
const textoEscuro = Color(0xFF302521);

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: creme,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: vermelho,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.restaurant_menu,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Me Receite',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: vermelho,
                        ),
                      ),
                      Text(
                        'Seu próximo prato favorito!',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border,
                      color: vermelho,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              const Text(
                'Olá, chef! 👨‍🍳',
                style: TextStyle(
                  fontSize: 17,
                  color: textoEscuro,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'O que vamos cozinhar hoje?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: textoEscuro,
                ),
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFF0E5DA)),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search, color: vermelho),
                    hintText: 'Busque receitas ou ingredientes',
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 28),

              const Text(
                'Explore por categoria',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textoEscuro,
                ),
              ),
              const SizedBox(height: 15),

              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Categoria(
                      icone: Icons.dinner_dining,
                      nome: 'Massas',
                    ),
                    Categoria(
                      icone: Icons.lunch_dining,
                      nome: 'Carnes',
                    ),
                    Categoria(
                      icone: Icons.eco,
                      nome: 'Saladas',
                    ),
                    Categoria(
                      icone: Icons.cake,
                      nome: 'Doces',
                    ),
                    Categoria(
                      icone: Icons.bakery_dining,
                      nome: 'Lanches',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Receita em destaque',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: textoEscuro,
                      ),
                    ),
                  ),
                  Icon(Icons.local_fire_department, color: vermelho),
                ],
              ),

              const SizedBox(height: 14),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.brown.withValues(alpha: 0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(22),
                      ),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1551183053-bf91a1d81141?auto=format&fit=crop&w=900&q=85',
                        height: 190,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 190,
                            color: const Color(0xFFF1D7C4),
                            child: const Center(
                              child: Icon(
                                Icons.restaurant,
                                size: 55,
                                color: vermelho,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'MACARRÃO ESPECIAL',
                            style: TextStyle(
                              color: vermelho,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(height: 7),
                          const Text(
                            'Macarrão ao molho cremoso',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textoEscuro,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              const Icon(
                                Icons.schedule,
                                size: 18,
                                color: vermelho,
                              ),
                              const SizedBox(width: 5),
                              const Text('25 min'),
                              const SizedBox(width: 18),
                              const Icon(
                                Icons.signal_cellular_alt,
                                size: 18,
                                color: vermelho,
                              ),
                              const SizedBox(width: 5),
                              const Text('Fácil'),
                              const Spacer(),
                              Icon(
                                Icons.favorite_border,
                                color: vermelho,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              const Text(
                'Receitas para você',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textoEscuro,
                ),
              ),
              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: ReceitaCard(
                      nome: 'Lasanha caseira',
                      tempo: '45 min',
                      imagem:
                      'https://images.unsplash.com/photo-1574894709920-11b28e7367e3?auto=format&fit=crop&w=600&q=80',
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: ReceitaCard(
                      nome: 'Brownie de chocolate',
                      tempo: '35 min',
                      imagem:
                      'https://images.unsplash.com/photo-1606313564200-e75d5e30476c?auto=format&fit=crop&w=600&q=80',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: vermelho,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class Categoria extends StatelessWidget {
  final IconData icone;
  final String nome;

  const Categoria({
    super.key,
    required this.icone,
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              color: const Color(0xFFF9E4DE),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icone,
              color: vermelho,
              size: 30,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            nome,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: textoEscuro,
            ),
          ),
        ],
      ),
    );
  }
}

class ReceitaCard extends StatelessWidget {
  final String nome;
  final String tempo;
  final String imagem;

  const ReceitaCard({
    super.key,
    required this.nome,
    required this.tempo,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imagem,
            height: 115,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 115,
                color: const Color(0xFFF1D7C4),
                child: const Center(
                  child: Icon(
                    Icons.restaurant,
                    size: 35,
                    color: vermelho,
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: textoEscuro,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.schedule,
                      size: 15,
                      color: vermelho,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      tempo,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
