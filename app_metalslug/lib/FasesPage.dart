import 'package:flutter/material.dart';
import 'Fase.dart';

final List<Fase> fase = [
  Fase(
    nome:'',
    objetivo: '',
    img: '',
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

                      Text(
                        _fase.nome,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight:FontWeight.w900, 
                          color: Colors.white,
                        ),
                      ),

                      // MISSION 1

                      const Image(
                        image: AssetImage('img/fases/mission1.jpg'),
                        fit: BoxFit.cover,
                        height: 200,
                        width: 400,
                      ),

                      const SizedBox(height:20),

                      const Text(
                        "MISSION 1:",
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
                          "Aqui temos uma perfeita apresentação do que iremos ver durante o jogo. Os inimigos, apesar de demonstrarem diferentes padrões de comportamento, são fáceis de ser abatidos por aqueles que possuem alguma experiência no gênero.Um helicóptero se apresenta como subchefe e já temos acesso ao tanque Metal Slug, símbolo da franquia.",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        
                      ),

                      const SizedBox(height: 50),

                      // MISSION 2

                      const Image(
                        image: AssetImage("img/fases/mission2.jpg"),
                        fit: BoxFit.cover,
                        height: 200,
                        width: 400,
                      ),

                      const SizedBox(height:20),

                      const Text(
                        "MISSION 2:",
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
                          ("O ambiente agora é noturno e começam a surgir obstáculos que nos fazem ter precaução. Nossas possibilidades de armamentos se expandem, assim como a diversidade de inimigos, como paraquedistas, barcos e tanques de guerra. O chefe, como de costume, impressiona."),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),


                      const SizedBox(height: 50),

                      // MISSION 3
                      const Image(
                        image: AssetImage("img/fases/mission3.jpg"),
                        fit: BoxFit.cover,
                        height: 200,
                        width: 400,
                      ),

                      const SizedBox(height:20),

                      const Text(
                        "MISSION 3:",
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
                          ("Aqui o jogo dá um salto significativo em sua dificuldade e provavelmente foi o fim da ficha de muitos principiantes em Metal Slug. Passamos a fase escalando uma montanha congelada com cuidado em acompanhar o “scrolling” vertical, já que morremos se cairmos em uma região que não “aparece mais na tela”. Além de cenários devastados pela guerra e a presença do gênero plataforma, nesta etapa nos encontramos pela primeira vez com o icônico vilão, Allen O’Neil, como subchefe que, além de difícil, aparecerá constantemente em aventuras futuras."),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),


                      const SizedBox(height: 50),

                      // MISSION 4
                       const Image(
                        image: AssetImage("img/fases/mission4.png"),
                        fit: BoxFit.cover,
                        height: 200,
                        width: 400,
                      ),

                      const SizedBox(height:20),

                      const Text(
                        "MISSION 4:",
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
                          ("Esta missão começa em uma praia com muitas plataformas rochosas. Na primeira parte, cuidado com o mar, se você cair, você morrerá. As partes 2 e 3 estão cheias de inimigos e podem ser complicadas de passar sem morrer. Esta é a única missão sem áreas secretas ou rotas alternativas."),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),


                      const SizedBox(height: 50),

                      // MISSION 5

                       const Image(
                        image: AssetImage("img/fases/mission5.png"),
                        fit: BoxFit.cover,
                        height: 200,
                        width: 400,
                      ),

                      const SizedBox(height:20),

                      const Text(
                        "MISSION 5:",
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
                          ("A missão adequada final de Metal Slug Advance faz você atacar a base inimiga com um ataque aéreo. Uma vez lá dentro, você terá que sobreviver em um labirinto ou salas e corredores até encontrar o chefe."),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
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