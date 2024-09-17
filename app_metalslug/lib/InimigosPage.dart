import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Personagem.dart';

class InimigosPage extends StatefulWidget {
  @override
  InimigosPageState createState() => InimigosPageState();
}

class InimigosPageState extends State<InimigosPage> {
  int _currentImageIndex = 0;

  // Lista de personagens
  final List<Personagem> inimigo = [
    Personagem(
      nome: 'Soldados',
      imagem: 'img/inimigos/soldadoPrincipal.gif',
      descricao: 'Eles são chamados de exército rebelde, que recebem armamento no qual se encaixa em sua função específica. Eles aparecem pilotando tanques, helicópteros e navios de guerra. Muito do humor do jogo vem de como os inimigos se retratam. O jogador os encontra em muitos momentos de lazer: tomando sol, assando comida no fogo ou apenas conversando entre si.',
      detalhesImagem: 'img/inimigos/soldadoGif.gif',
    ),
    Personagem(
      nome: 'Tetsuyuki',
      imagem: 'img/inimigos/tetsuyukiPrincipal.jpg',
      descricao: 'O Tetsuyuki é uma nave de guerra voadora criada pelos Rebeldes para combate, equipada com armaduras e armas pesadas, o que lhe rendeu apelidos como  Castelo Impregnável ,  Mariposa do Inferno e  Titã Marinheiro. Ele é o chefe da missão 1 do jogo.',
      detalhesImagem: 'img/inimigos/tetsuyukiGif.gif',
    ),
    Personagem(
      nome: 'Hairbuster',
      imagem: 'img/inimigos/hairbusterPrincipal.jpg',
      descricao: 'O Hairbuster Riberts é um protótipo de bombardeiro pesado criado pelo Exército Rebelde e é equipado com várias formas de armamentos, como mísseis guiados e bombas saltitantes, tornando-o uma plataforma de armas versátil capaz de se ajustar rapidamente à situação. Ele é o chefe da missão 2 do jogo',
      detalhesImagem: 'img/inimigos/hairbusterGif.gif',
    ),
    Personagem(
      nome: 'Tani Oh',
      imagem: 'img/inimigos/taniPrincipal.jpg',
      descricao: '',
      detalhesImagem: 'img/inimigos/taniGif.gif',
    ),
    Personagem(
      nome: 'Shoe & Karn',
      imagem: 'img/inimigos/shoePrincipal.jpg',
      descricao: '',
      detalhesImagem: 'img/inimigos/shoeGif.gif',
    ),
    Personagem(
      nome: 'Iron Nokana',
      imagem: 'img/inimigos/ironPrincipal.jpg',
      descricao: '',
      detalhesImagem: 'img/inimigos/ironGif.gif',
    ),
    Personagem(
      nome: 'Hi-Do',
      imagem: 'img/inimigos/hiPrincipal.jpg',
      descricao: '',
      detalhesImagem: 'img/inimigos/hiGif.gif',
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
                image: NetworkImage('img/tituloInimigos.png'),
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
                items: inimigo.asMap().entries.map((entry) {
                  Personagem inimigo = entry.value;
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                              return DetalhesInimigoPage(inimigo: inimigo);
                          },
                        ),
                      );
                    },
                    child: Image.network(
                      inimigo.imagem,
                      height: 300,
                      width: 300,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                child: Text(
                  inimigo[_currentImageIndex].nome,
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

class DetalhesInimigoPage extends StatelessWidget {
  final Personagem inimigo;

  DetalhesInimigoPage({required this.inimigo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          inimigo.nome,
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
                  image: NetworkImage(inimigo.detalhesImagem),
                  width: 400,
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  inimigo.nome,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 450,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(146, 0, 0, 0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    inimigo.descricao,
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