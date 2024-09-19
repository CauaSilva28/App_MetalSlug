import 'package:flutter/material.dart';
import 'Fase.dart';

final List<Fase> fase = [
  Fase(
    nome:'Floresta Absolutamente Densa',
    objetivo: '',
    descricaoPtInicial: '',
    descricaoPtFinal: '',
    imgParteInicial: '',
    imgParteFinal: '', 
  ),
];

class Fasespage extends StatelessWidget {
  const Fasespage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Image(
                image: AssetImage('img/tituloFases.png'),
                height:80,
                fit: BoxFit.contain,
              ),
              Column(         
                children: fase.map((_fase) {
                  return Column(
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        _fase.nome,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight:FontWeight.w900, 
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height:50),
                      Container(
                        width: 400,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(146, 0, 0, 0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          _fase.objetivo,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 80),
                      Container(
                        width: 400,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(146, 0, 0, 0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          _fase.descricaoPtInicial,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 80),
                      Image(
                        image: AssetImage(_fase.imgParteInicial),
                        fit: BoxFit.cover,
                        width:400,
                      ),
                      const SizedBox(height: 100),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}