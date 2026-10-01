import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafetería',
      home: const PantallaPedido(),
    );
  }
}

class PantallaPedido extends StatefulWidget {
  const PantallaPedido({super.key});

  @override
  State<PantallaPedido> createState() => _PantallaPedidoState();
}

class _PantallaPedidoState extends State<PantallaPedido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi pedido')),
      body: const Center(child: Text('Productos')),
    );
  }
}

class Producto {
  final String nombre;
  final double precio;
  int cantidad;

  Producto{
    this.nombre required;
    this.precio required;
  }
}
