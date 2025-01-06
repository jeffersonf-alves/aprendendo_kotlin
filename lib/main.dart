import 'package:flutter/material.dart';
import './questao.dart';

main() {
  runApp(new PerguntaApp());
}


class PerguntaApp extends StatelessWidget {


  void responder() {
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {

    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
              'Perguntas!',
            style: TextStyle(
                fontSize: 22, // Tamanho maior para o título
                fontWeight: FontWeight.bold, // Deixa o texto em negrito
                color: Colors.white, // Define a cor do texto
              ),
            ),
            centerTitle: true, // Centraliza o título
            backgroundColor: const Color.fromARGB(255, 109, 24, 134), // Cor moderna de fundo
            elevation: 10, // Elevação para dar profundidade
            shadowColor: Colors.black54, // Cor da sombra
            leading: IconButton(
              icon: Icon(Icons.menu), // Ícone de menu no canto esquerdo
              onPressed: () {
                // Ação ao pressionar
                print('Menu clicado!');
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search), // Ícone de pesquisa no canto direito
                onPressed: () {
                  // Ação ao pressionar
                  print('Pesquisa clicada!');
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert), // Ícone de mais opções
                onPressed: () {
                  // Ação ao pressionar
                  print('Mais opções clicado!');
                },
              ),
            ],
        ), 
        body: Column(
          children: <Widget>[
            Text(perguntas.elementAt(0)),
            ElevatedButton(
              child: Text('Respostas 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Respostas 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Respostas 3'),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}