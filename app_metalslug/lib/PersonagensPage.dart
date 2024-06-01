import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PersonagensPage extends StatefulWidget {
  @override
  _PersonagensPageState createState() => _PersonagensPageState();
}

class _PersonagensPageState extends State<PersonagensPage> {
  int _currentImageIndex = 0;

  final List<String> _images = [
    'img/imgperso.png',
    'img/imgpersoman.png',
  ];

  final List<String> _texts = [
    'Eri Kasamoto',
    'Marco Rossi',
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
              Text(
                'Personagens',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 240, 176, 0),
                ),
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
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentImageIndex = index;
                    });
                  },
                ),
                items: _images.asMap().entries.map((entry) {
                  int index = entry.key;
                  String imagePath = entry.value;
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            if (index == 0) {
                              return DetalhesPersonagem1Page();
                            } else {
                              return DetalhesPersonagem2Page();
                            }
                          },
                        ),
                      );
                    },
                    child: Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                      height: 400,
                      width: 400,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                child: Text(
                  _texts[_currentImageIndex],
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

class DetalhesPersonagem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Eri Kasamoto',
          style: TextStyle(
            color: Color.fromARGB(255, 240, 176, 0), // Cor do texto do título
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          // Container com a imagem de fundo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('img/fundo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Conteúdo da página
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image(
                  image: NetworkImage('img/imgperso2.png'),
                  height: 250,
                  width: 250,
                ),
                SizedBox(height: 10),
                Text(
                  'Eri Kasamoto',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 400,
                  height: 200,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(146, 0, 0, 0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing',
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

class DetalhesPersonagem2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Marco Rossi',
          style: TextStyle(
            color: Color.fromARGB(255, 240, 176, 0), // Cor do texto do título
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          // Container com a imagem de fundo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('img/fundo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Conteúdo da página
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image(
                  image: NetworkImage('img/imgpersoman2.png'),
                  height: 250,
                  width: 250,
                ),
                SizedBox(height: 10),
                Text(
                  'Marco Rossi',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 400,
                  height: 200,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(146, 0, 0, 0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing',
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
