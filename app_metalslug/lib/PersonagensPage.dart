import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Personagem.dart';

class PersonagensPage extends StatefulWidget {
  @override
  _PersonagensPageState createState() => _PersonagensPageState();
}

class _PersonagensPageState extends State<PersonagensPage> {
  int _currentImageIndex = 0;

  // Lista de personagens
  final List<Personagem> _personagens = [
    Personagem(
      nome: 'MarcoRossi',
      imagem: 'img/marcoPrincipal.png',
      descricao: 'Marco Rossi é o personagem principal de Metal Slug: Super Vehicle-001. Como líder do esquadrão Peregrine Falcon, Marco é conhecido por sua coragem e habilidades de combate excepcionais. Com seu icônico uniforme militar e bandana, ele enfrenta as forças do General Morden com determinação, utilizando uma variedade de armas e veículos, incluindo o lendário tanque Metal Slug. Marco é um herói clássico dos jogos de ação, representando o espírito indomável dos soldados na luta pela liberdade e pela justiça.',
      detalhesImagem: 'img/marcoRossi.gif',
    ),
    Personagem(
      nome: 'Tarma Roving',
      imagem: 'img/tarmaPrincipal.png',
      descricao: 'Companheiro de Marco Rossi, Tarma é um especialista em armas e explosivos, trazendo um estilo de combate explosivo e preciso para a equipe. Seu uniforme de combate e seu distintivo capacete o tornam um ícone reconhecível. Com habilidades notáveis em manuseio de armamentos e veículos pesados, Tarma complementa perfeitamente a equipe com sua experiência e destreza em batalhas intensas. Juntos, Marco e Tarma enfrentam os desafios mais implacáveis para garantir a vitória e a paz.',
      detalhesImagem: 'img/tarma.gif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image(
                image: NetworkImage('img/tituloPersonagem.png'),
                height:80,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentImageIndex = index;
                    });
                  },
                ),
                items: _personagens.asMap().entries.map((entry) {
                  Personagem personagem = entry.value;
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                              return DetalhesPersonagemPage(personagem: personagem);
                          },
                        ),
                      );
                    },
                    child: Image.network(
                      personagem.imagem,
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                child: Text(
                  _personagens[_currentImageIndex].nome,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class DetalhesPersonagemPage extends StatelessWidget {
  final Personagem personagem;

  DetalhesPersonagemPage({required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          personagem.nome,
          style: TextStyle(
            color: Color.fromARGB(255, 179, 2, 2),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('img/fundo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image(
                  image: NetworkImage(personagem.detalhesImagem),
                  height: 250,
                  width: 250,
                ),
                SizedBox(height: 10),
                Text(
                  personagem.nome,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 450,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(146, 0, 0, 0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    personagem.descricao,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}