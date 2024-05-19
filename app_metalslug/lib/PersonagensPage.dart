import 'package:flutter/material.dart';

class PersonagensPage extends StatelessWidget {
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
              SizedBox(height: 0),
              GestureDetector(
                onTap: () {
                  // Navegue para a próxima tela aqui
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetalhesPersonagemPage()),
                  );
                },
                child: Image(
                  image: NetworkImage('img/imgperso.png'),
                  height: 400,
                  width: 400,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 350,
                child: Text(
                  'Eri Kasamoto',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detalhes do Personagem',
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