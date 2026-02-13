import 'package:flutter/material.dart';

void main() => runApp(AppSteam());

class AppSteam extends StatelessWidget {
  const AppSteam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steam de Mulato',
      home: Juegos(),
      debugShowCheckedModeBanner: false,
    );
  }
}// fin clase  

class Juegos extends StatelessWidget {
  const Juegos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0E14),
      appBar: AppBar(
        title: const Text(
          'STEAM DE MULATO',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF171a21),
        elevation: 0,
        actions: const [
          Icon(Icons.gamepad, color: Color(0xFF66c0f4)),
          SizedBox(width: 15),
          Icon(Icons.videogame_asset, color: Color(0xFF66c0f4)),
          SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Fila 1: Azul Oscuro y Verde Neón
              Expanded(
                child: Row(
                  children: [
                    _buildGamerCard('VIDEOJUEGOS', Icons.sports_esports, const Color(0xFF0052D4), const Color(0xFF4364F7)),
                    _buildGamerCard('DESARROLLADORES', Icons.engineering, const Color(0xFF1D976C), const Color(0xFF93F9B9)),
                  ],
                ),
              ),
              // Fila 2: Morado y Amarillo/Naranja
              Expanded(
                child: Row(
                  children: [
                    _buildGamerCard('PUBLISHERS', Icons.business, const Color(0xFF8E2DE2), const Color(0xFF4A00E0)),
                    _buildGamerCard('COMPRAS', Icons.local_offer, const Color(0xFFF2994A), const Color(0xFFF2C94C)),
                  ],
                ),
              ),
              // Fila 3: Verde Petróleo y Rojo Oscuro
              Expanded(
                child: Row(
                  children: [
                    _buildGamerCard('USUARIOS', Icons.person, const Color(0xFF00467F), const Color(0xFFA5CC82)),
                    _buildGamerCard('TECNICOS', Icons.settings, const Color(0xFFCB3066), const Color(0xFF161616)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    
    );
  }
  // Widget para las tarjetas con degradados y bordes brillantes
  Widget _buildGamerCard(String titulo, IconData icono, Color colorInicio, Color colorFin) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          // Degradado de colores según tu petición
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colorInicio.withOpacity(0.8),
              colorFin.withOpacity(0.4),
            ],
          ),
          borderRadius: BorderRadius.circular(20.0),
          // Borde sutil para el efecto de "luz"
          border: Border.all(
            color: colorInicio.withOpacity(0.5),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: colorInicio.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, size: 40, color: Colors.white),
            const SizedBox(height: 12),
            Text(
              titulo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 1.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
