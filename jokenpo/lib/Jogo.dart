import 'package:flutter/material.dart';
import "dart:math";

class Jogo extends StatefulWidget {
   @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imagemApp = AssetImage("image/padrao.png");
  var _mensagem = "Escolha uma opção abaixo:";

  void _opcaoSelecionada(String escolhaUsuario){
    var opcoes = ["pedra","papel","tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    print("Escolha do usuário: $escolhaUsuario");
    print("Escolha do App: $escolhaApp");

    switch(escolhaApp){
      case "pedra":
        setState(() {
          this._imagemApp=AssetImage("image/pedra.png");
        });
        break;
      case "papel":
      setState(() {
        this._imagemApp=AssetImage("image/papel.png");
      });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp=AssetImage("image/tesoura.png");
        });
        break;
    }

    if(
      (escolhaUsuario=="pedra" && escolhaApp=="tesoura")||
      (escolhaUsuario=="papel" && escolhaApp=="pedra")||
      (escolhaUsuario=="tesoura" && escolhaApp=="papel"))
    {
      setState(() {
        this._mensagem="Vitória!";
      });
    }
    else if(
      (escolhaUsuario=="tesoura" && escolhaApp=="pedra")||
      (escolhaUsuario=="pedra" && escolhaApp=="papel")||
      (escolhaUsuario=="papel" && escolhaApp=="tesoura"))
    {
      setState(() {
        this._mensagem="Que pena, você perdeu!";
      });
    }
    else {
      setState(() {
        this._mensagem="Empate!";
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Jokenpo")
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top:32, bottom: 20) ,
            child: Text(
              "Escolha do App:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Image(image: this._imagemApp),
          Padding(
            padding: EdgeInsets.only(top:32, bottom: 20) ,
            child: Text(
              this._mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => _opcaoSelecionada("pedra"),
                child: Image.asset("image/pedra.png", height: 90),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("papel"),
                child: Image.asset("image/papel.png", height: 90),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("tesoura"),
                child: Image.asset("image/tesoura.png", height: 90),
              ),
            ],
          )
        ],
     ),
    );
  }
}
