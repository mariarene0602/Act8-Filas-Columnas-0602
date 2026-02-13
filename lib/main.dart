import 'package:flutter/material.dart';

void main() => runApp(const AppEntrenamientoCanino());

class AppEntrenamientoCanino extends StatelessWidget {
  const AppEntrenamientoCanino({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entrenamiento Canino Maria Hernandez',
      home: EntrenamientoFilaColumna(),
    );
  }
}

class EntrenamientoFilaColumna extends StatelessWidget {
  const EntrenamientoFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Entrenamiento Maria Hernandez",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.medical_services, color: Colors.white),
          SizedBox(width: 12),
          Icon(Icons.pets, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Fila 1: Naranja y Amarillo
            Expanded(
              child: Row(
                children: [
                  buildCard(Colors.orange, Icons.stars, "Cachorros", "Socialización temprana"),
                  buildCard(Colors.yellow[700]!, Icons.psychology, "Obediencia", "Comandos básicos"),
                ],
              ),
            ),
            // Fila 2: Magenta y Verde
            Expanded(
              child: Row(
                children: [
                  buildCard(const Color(0xFFFF00FF), Icons.speed, "Agilidad", "Circuito de obstáculos"),
                  buildCard(Colors.green, Icons.nature_people, "Parque", "Paseos grupales"),
                ],
              ),
            ),
            // Fila 3: Azul y Rojo
            Expanded(
              child: Row(
                children: [
                  buildCard(Colors.blue, Icons.hotel, "Guardería", "Estadía 24 horas"),
                  buildCard(Colors.red, Icons.favorite, "Terapia", "Modificación de conducta"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- ESTA ES LA FUNCIÓN QUE TE FALTABA ---
  // Debe ir dentro de la clase EntrenamientoFilaColumna
  Widget buildCard(Color color, IconData icon, String title, String info) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 8,
              offset: const Offset(3, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              info,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 11,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
} // fin clase EntrenamientoFilaColumna