import 'package:cara_ou_coroa/JogoResultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CaraCoroa extends StatefulWidget {
  @override
  _CaraCoroaState createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {

  void sorteio(){
    var opcao = ["cara","coroa"];
    var indice = Random().nextInt(opcao.length);
    var escolha =  opcao[indice];

    Navigator.push (
      context,
      MaterialPageRoute(
        builder: (context) => JogoResultado(escolha),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //prefixo 0xff é obrigatório na cor
        backgroundColor: Color(0xff61bd86),
        body: Container(
          alignment: Alignment.center,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("images/logo.png"),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child:
                  GestureDetector(
                    child: Image.asset("images/botao_jogar.png"),
                    onTap: (){
                      sorteio();
                    },
                  ),
                ),
              ]
          ),
        )
    );
  }
}
