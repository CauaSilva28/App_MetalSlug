import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
    Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Image(
                image: AssetImage('img/tituloHome.png'),
                height:80,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    const Image(
                      image: AssetImage('img/imgsobre.png'),
                      height: 235,
                      width: 235,
                      fit: BoxFit.contain,
                    ),
                    
                    const SizedBox(width: 5), // Espaçamento entre a imagem e o texto
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(129, 0, 0, 0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'Metal Slug é uma série de jogos de tiro estilo plataforma (Shoot em up) desenvolvido pela SNK, inicialmente lançados para arcade. Os jogos da série geralmente lidam com a luta contra o exército do general Morden e também contra extraterrestres.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin:const EdgeInsets.all(30),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(129, 0, 0, 0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'O aplicativo falará em específico sobre o jogo Metal Slug: Super Vehicle-001, explorando detalhadamente seus elementos icônicos, como a jogabilidade dinâmica, os personagens carismáticos, e os desafiadores níveis que marcaram uma geração.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              
              const Image(
                image: AssetImage('img/imgsobre_metal1.jpg'),
                width: 400,
                fit: BoxFit.contain,
              ),

              Container(
                margin:const EdgeInsets.all(30),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(129, 0, 0, 0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Metal Slug: Super Vehicle 001 é um jogo do gênero Run N Gun, lançado, originalmente, no ano de 1996 para Arcade (MVS System), sendo desenvolvido pela Nazca Corporation e publicado pela SNK. O jogo é amplamente conhecido por seu senso de humor, animação desenhada à mão extremamente fluida e ação rápida para dois jogadores. É o primeiro título dasérie Metal Slug.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Container(
                margin:const EdgeInsets.fromLTRB(30,0,30,30),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(129, 0, 0, 0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'O jogador tem que atirar constantemente em um fluxo contínuo de inimigos para chegar ao fim de uma missão. No final de cada missão, o jogador deve confrontar um chefe que geralmente é consideravelmente maior do que os inimigos normais e leva vários tiros para derrotar. No caminho pela missão, o jogador encontra atualizações de armas e SV-001s para poder de fogo e defesa adicionais.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        image: AssetImage('img/imgsobre_metal2.png'),
                        width: 230,
                        fit: BoxFit.contain,
                      ),
                    
                    SizedBox(width: 10),

                    Image(
                        image: AssetImage('img/imgsobre_metal3.png'),
                        width: 230,
                        fit: BoxFit.contain,
                      ),                   
                  ]
                ),
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}