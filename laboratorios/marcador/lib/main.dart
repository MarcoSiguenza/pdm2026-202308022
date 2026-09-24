import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marcador',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      home: const MarcadorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MarcadorPage extends StatefulWidget {
  const MarcadorPage({super.key});

  @override
  State<MarcadorPage> createState() => _MarcadorPageState();
}

class _MarcadorPageState extends State<MarcadorPage> {
  int puntosEquipo1 = 0;
  int puntosEquipo2 = 0;

  final String equipo1 = 'Equipo A';
  final String equipo2 = 'Equipo B';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Marcador')),

      body: Column(
        children: [
          const SizedBox(height: 20),

          const SizedBox(height: 20),

          Row(
            children: [
              // Equipo A
              Expanded(
                child: Card(
                  color: puntosEquipo1 > puntosEquipo2
                      ? Colors.green[50]
                      : Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          equipo1,
                          style: TextStyle(
                            fontSize: 20,
                            color: puntosEquipo1 > puntosEquipo2
                                ? Colors.green
                                : Colors.black,
                          ),
                        ),

                        Text(
                          '$puntosEquipo1',
                          style: const TextStyle(fontSize: 40),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              puntosEquipo1++;
                            });
                          },
                          child: const Text('+1'),
                        ),

                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: puntosEquipo1 > 0
                              ? () {
                                  setState(() {
                                    puntosEquipo1--;
                                  });
                                }
                              : null,
                          child: const Text('-1'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Equipo B
              Expanded(
                child: Card(
                  color: puntosEquipo2 > puntosEquipo1
                      ? Colors.green[100]
                      : Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          equipo2,
                          style: TextStyle(
                            fontSize: 20,
                            color: puntosEquipo2 > puntosEquipo1
                                ? Colors.green
                                : Colors.black,
                          ),
                        ),

                        Text(
                          '$puntosEquipo2',
                          style: const TextStyle(fontSize: 40),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              puntosEquipo2++;
                            });
                          },
                          child: const Text('+1'),
                        ),

                        const SizedBox(height: 10),

                        ElevatedButton(
                          onPressed: puntosEquipo2 > 0
                              ? () {
                                  setState(() {
                                    puntosEquipo2--;
                                  });
                                }
                              : null,
                          child: const Text('-1'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              setState(() {
                puntosEquipo1 = 0;
                puntosEquipo2 = 0;
              });
            },
            child: const Text('Reiniciar'),
          ),
        ],
      ),
    );
  }
}
