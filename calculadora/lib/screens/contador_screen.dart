import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int clicksMas = 0;
  int clicksMenos = 0;
  int total = 0;

  void incrementar() {
    setState(() {
      clicksMas++;
    });
  }

  void decrementar() {
    setState(() {
      clicksMenos++;
    });
  }

  void calcularTotal() {
    setState(() {
      total = clicksMas - clicksMenos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Clicks'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clicksMas = 0;
                clicksMenos = 0;
                total = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotonContador(texto: 'Numero de clicks +', onPressed: incrementar),
            const SizedBox(height: 12),
            CajaValor(texto: '$clicksMas'),
            const SizedBox(height: 12),
            BotonContador(texto: 'Numero de clicks -', onPressed: decrementar),
            const SizedBox(height: 12),
            CajaValor(texto: '$clicksMenos'),
            const SizedBox(height: 12),
            BotonContador(texto: 'Total', onPressed: calcularTotal),
            const SizedBox(height: 12),
            CajaValor(texto: '$total'),
          ],
        ),
      ),
    );
  }
}

class BotonContador extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;

  const BotonContador({super.key, required this.texto, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          shape: const RoundedRectangleBorder(),
          side: const BorderSide(color: Colors.black, width: 1.5),
        ),
        child: Text(texto, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}

class CajaValor extends StatelessWidget {
  final String texto;

  const CajaValor({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: Text(texto, style: const TextStyle(fontSize: 16)),
    );
  }
}
