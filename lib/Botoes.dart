import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  final int paginaAtual;
  final Function(int) aoSelecionar;

  const Botoes({
    super.key,
    required this.paginaAtual,
    required this.aoSelecionar,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: true,
      backgroundColor: const Color.fromARGB(186, 15, 15, 44),
      items: [
        BottomNavigationBarItem(
          icon: Container(
            child: Icon(Icons.home, color: Colors.white),
            padding: EdgeInsets.fromLTRB(4, 15, 4, 0),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: Icon(Icons.settings, color: Colors.white),
            padding: EdgeInsets.fromLTRB(4, 15, 4, 0),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: Icon(Icons.search, color: Colors.white),
            padding: EdgeInsets.fromLTRB(4, 15, 4, 0),
          ),
          label: '',
        ),
      ],
    );
  }
}
