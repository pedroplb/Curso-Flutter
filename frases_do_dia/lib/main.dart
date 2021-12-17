import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _fraseTela="Frases ditas por sábios devs";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases de dev"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/cansaco.jpg"),
                Text(
                  "$_fraseTela",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 19,
                    color:Colors.blueGrey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                RaisedButton(onPressed: (){

                  Frase novaFrase = Frase();
                  setState(() {
                    _fraseTela = novaFrase.frase;
                  });
                },
                    child: Text(
                      "Nova Frase",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                    ),
                    color: Colors.teal
                ),
              ],
            )
        )
    )
   );
  }
}


class Frase{
  var _frase = "Frase Inicial";
  List _frases = [
    "Para baixo é só cavar",
    "Pode passar batom em um porco, ele continua sendo um porco só que bonito",
    "Segura o TRHI que estou testando o programa",
    "Sobe a tela sem a transação que não vai ter erro",
    "Aprende durante o desenvolvimento do projeto",
    "Se deu erro então você não fez certo",
    "Me entristece mas não surpreende",
    "Vai dar merda aí, capitão",
    "Faz certo que dá certo"
  ];


  get frase {

    var i = Random().nextInt(_frases.length);

    _frase = _frases[i];
    return this._frase;

  }
}