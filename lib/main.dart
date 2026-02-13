import 'package:flutter/material.dart';

void main() => runApp(AppSteam());

class AppSteam extends StatelessWidget {
  const AppSteam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steam',
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
      appBar: AppBar(
        title: const Text(
          'Steam del Mulato',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.gamepad, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.hail, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.wind_power, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.cabin, color: Colors.white),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF1b2838),
                Color(0xFF2a475e),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
  padding: const EdgeInsets.all(12.0), // Espaciado alrededor de la lista
  children: [
    // Elemento 1: Notificaciones
    ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tileColor: Colors.blue.shade50,
      leading: const Icon(Icons.notifications, color: Colors.blue),
      title: const Text('Notificaciones', style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: const Text('Revisa tus mensajes recientes'),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    ),
    const SizedBox(height: 10), // Espacio entre elementos

    // Elemento 2: Perfil
    ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tileColor: Colors.purple.shade50,
      leading: const Icon(Icons.person, color: Colors.purple),
      title: const Text('Mi Perfil', style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: const Text('Edita tu información personal'),
      trailing: const Icon(Icons.edit, color: Colors.purple),
    ),
    const SizedBox(height: 10),

    // Elemento 3: Seguridad
    ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tileColor: Colors.orange.shade50,
      leading: const Icon(Icons.security, color: Colors.orange),
      title: const Text('Seguridad', style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: const Text('Cambia tu contraseña'),
      trailing: const Icon(Icons.lock_outline),
    ),
    const SizedBox(height: 10),

    // Elemento 4: Favoritos
    ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tileColor: Colors.red.shade50,
      leading: const Icon(Icons.library_add, color: Colors.red),
      title: const Text('Biblioteca', style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: const Text('Tus artículos guardados'),
      trailing: const Icon(Icons.bookmark_border),
    ),
    const SizedBox(height: 10),

    // Elemento 5: Configuración
    ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tileColor: Colors.teal.shade50,
      leading: const Icon(Icons.settings, color: Colors.teal),
      title: const Text('Ajustes', style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: const Text('Configuración avanzada'),
      trailing: const Icon(Icons.tune),
    ),
  ],
),
    );
  }
}// fin clase Juegpos