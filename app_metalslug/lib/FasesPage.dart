import 'package:flutter/material.dart';
import 'Fase.dart';

final List<Fase> fase = [
  Fase(
    nome:'MISSION 1:',
    objetivo: 'Aqui temos uma perfeita apresentação do que iremos ver durante o jogo. Os inimigos, apesar de demonstrarem diferentes padrões de comportamento, são fáceis de ser abatidos por aqueles que possuem alguma experiência no gênero.Um helicóptero se apresenta como subchefe e já temos acesso ao tanque Metal Slug, símbolo da franquia.',
    img: 'img/fases/mission1.jpg',
  ),
  Fase(
    nome:'MISSION 2:',
    objetivo: 'O ambiente agora é noturno e começam a surgir obstáculos que nos fazem ter precaução. Nossas possibilidades de armamentos se expandem, assim como a diversidade de inimigos, como paraquedistas, barcos e tanques de guerra. O chefe, como de costume, impressiona.',
    img: 'img/fases/mission2.jpg',
  ),
  Fase(
    nome:'MISSION 3:',
    objetivo: 'Aqui o jogo dá um salto significativo em sua dificuldade e provavelmente foi o fim da ficha de muitos principiantes em Metal Slug. Passamos a fase escalando uma montanha congelada com cuidado em acompanhar o “scrolling” vertical, já que morremos se cairmos em uma região que não “aparece mais na tela”. Além de cenários devastados pela guerra e a presença do gênero plataforma, nesta etapa nos encontramos pela primeira vez com o icônico vilão, Allen O’Neil, como subchefe que, além de difícil, aparecerá constantemente em aventuras futuras.',
    img: 'img/fases/mission3.jpg',
  ),
  Fase(
    nome:'MISSION 4:',
    objetivo: 'Ambientada em um deserto árido, ela apresenta uma paisagem cheia de dunas, palmeiras e áreas rochosas. O jogador enfrenta uma grande quantidade de inimigos, incluindo soldados da Rebelião e veículos blindados, enquanto avança pelo terreno desafiador. Durante a fase, é possível encontrar prisioneiros de guerra para libertar e receber power-ups, como armas e bombas.',
    img: 'img/fases/mission4.jpg',
  ),
  Fase(
    nome:'MISSION 5:',
    objetivo: 'Ambientada em uma cidade tomada pelo regime rebelde, essa fase oferece uma mistura de combates urbanos intensos. O jogador atravessa ruas destruídas, edifícios em ruínas e pontes enquanto enfrenta ondas de inimigos, que incluem soldados da Rebelião, tanques, artilharia e torres de defesa.',
    img: 'img/fases/mission5.jpg',
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

              const SizedBox(height: 30),

              Column(         
                children: fase.map((_fase) {
                  return Column(
                    children: [
                      
                      // MISSION
                      Image(
                        image: AssetImage(_fase.img),
                        fit: BoxFit.cover,
                        height: 250,
                        width: 400,
                      ),

                      const SizedBox(height:20),

                      Text(
                        _fase.nome,
                         style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                      ),

                      const SizedBox(height:20),

                      Container(
                        width: 400,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(146, 0, 0, 0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // ignore: prefer_const_constructors
                        child: Text(
                          _fase.objetivo,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(height: 50),
                    ],
                  );
                }).toList(),
              ),

              const SizedBox(height: 80),

            ],
          ),
        ),
      ),
    );
  }
}