import 'package:flutter/material.dart';
import 'Poder.dart';

final List<Poder> poder = [
  Poder(
    nome: 'Heavy Machine Gun',
    descricao: 'A Heavy Machine Gun ( HMG ) é a principal arma especial do jogo. Essas caixas são fáceis de encontrar, e os cartuchos FMJ de 7,62 mm nelas se encaixam na maioria das armas automáticas utilizadas no campo de batalha. Ela tem o mesmo poder de fogo de uma arma de mão comum, mas sua alta taxa de tiro compensa, tornando essa arma uma das mais mortais de todas.',
    imgIcone: 'img/armas/arma1.png',
    imgArma: 'img/armas/arma1gif.gif',
  ),
  Poder(
    nome: 'Flame Shot',
    descricao: 'O Flame Shot é uma arma secundária no jogo. Ela é eficaz contra infantaria e veículos levemente blindados a curta distância. Um tiro é o suficiente para queimar vários soldados, e alguns são o suficiente para derreter veículos com facilidade.',
    imgIcone: 'img/armas/arma2.png',
    imgArma: 'img/armas/arma2gif.gif',
  ),
  Poder(
    nome: 'Rocket Launcher',
    descricao: 'O Rocket Launcher é uma arma especial do jogo. Embora não sejam capazes de fornecer poder de penetração suficiente para derrotar blindagem pesada, esses foguetes são altamente explosivos e muito eficazes contra massas de infantaria. Os foguetes miram parcialmente nos inimigos mais próximos e então explodem no contato. O Big Rocket Launcher dispara foguetes maiores que causam mais dano.',
    imgIcone: 'img/armas/arma3.png',
    imgArma: 'img/armas/arma3gif.gif',
  ),
  Poder(
    nome: 'Shotgun',
    descricao: 'A Shotgun é uma arma secundária no jogo. Os cartuchos calibre 12 cheios de pelotas metálicas BB são altamente eficazes à queima-roupa, embora os BBs percam sua velocidade após percorrer uma curta distância e se tornem inofensivos depois de um tempo. Apesar de sua munição limitada, é muito poderoso, capaz de obliterar hordas de infantaria com um único tiro e até mesmo destruir veículos facilmente com apenas alguns.',
    imgIcone: 'img/armas/arma4.png',
    imgArma: 'img/armas/arma4gif.gif',
  ),
];

class PoderesPage extends StatelessWidget {
  const PoderesPage({super.key});

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
                image: AssetImage('img/tituloPoderes.png'),
                height:80,
                fit: BoxFit.contain,
              ),

              Column(         
                children: poder.map((poder) {
                  return Column(
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        poder.nome,
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight:FontWeight.w900, 
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Image(
                        image: AssetImage(poder.imgIcone),
                        fit: BoxFit.cover,
                        height: 200,
                        width: 200,
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: 400,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(146, 0, 0, 0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          poder.descricao,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 80),
                      Image(
                        image: AssetImage(poder.imgArma),
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