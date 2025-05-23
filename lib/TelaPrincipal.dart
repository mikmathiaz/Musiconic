import 'package:flutter/material.dart';
import 'Botoes.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _paginaAtual = 0;

  final List<Widget> _paginas = [TelaHome(), TelaConfig()];

  void _abrirBusca() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String musica = '';

        return AlertDialog(
          title: const Text('Buscar Música'),
          content: TextField(
            onChanged: (valor) {
              musica = valor;
            },
            decoration: const InputDecoration(
              hintText: 'Digite o nome da música',
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Buscar'),
              onPressed: () {
                Navigator.of(context).pop();
                // Aqui você pode fazer algo com o texto buscado
                print('Música buscada: $musica');
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 18, 43),
        appBar: AppBar(
          title: const Text('Musiconic', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Color.fromARGB(186, 15, 15, 44),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: _abrirBusca),
          ],
        ),

        body: _paginas[_paginaAtual],
        bottomNavigationBar: Botoes(
          paginaAtual: _paginaAtual,
          aoSelecionar: (index) {
            setState(() {
              _paginaAtual = index;
            });
          },
        ),

        drawer: Drawer(child: ListView()),
      ),
    );
  }
}
