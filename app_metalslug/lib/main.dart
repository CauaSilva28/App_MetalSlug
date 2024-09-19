import 'package:flutter/material.dart';
import 'SobrePage.dart';
import 'PersonagensPage.dart';
import 'PoderesPage.dart';
import 'InimigosPage.dart';
import 'FasesPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const SobrePage();
      case 1:
        return const PersonagensPage();
      case 2:
        return const InimigosPage();
      case 3:
        return const PoderesPage();
      case 4:
        return const Fasespage();
      default:
        return Container(); // Página vazia por padrão
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Container com a imagem de fundo
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/fundo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Página atual
            _getPage(_selectedIndex),
            // Barra de navegação
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                  child: GNav(
                    backgroundColor: Colors.transparent,
                    color: const Color.fromARGB(255, 179, 2, 2),
                    activeColor: const Color.fromARGB(255, 179, 2, 2),
                    tabBackgroundColor: const Color.fromARGB(92, 27, 0, 0),
                    gap: 8,
                    onTabChange: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    padding: const EdgeInsets.all(8),
                    tabs: const [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.person_4_sharp,
                        text: 'Personagens',
                      ),
                      GButton(
                        icon: Icons.person_3,
                        text: 'Inimigos',
                      ),
                      GButton(
                        icon: Icons.flash_on_sharp,
                        text: 'Armas',
                      ),
                      GButton(
                        icon: Icons.wysiwyg_rounded,
                        text: 'Fases',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}