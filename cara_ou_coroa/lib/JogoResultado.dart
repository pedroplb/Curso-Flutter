import 'package:cara_ou_coroa/CaraCoroa.dart';
import 'package:flutter/material.dart';

class JogoResultado extends StatefulWidget {
  @override

  String valorEscolhido = "";

  JogoResultado(this.valorEscolhido);

  _JogoResultadoState createState() => _JogoResultadoState();
}

class _JogoResultadoState extends State<JogoResultado> {

  @override
  Widget build(BuildContext context) {

    var resultado;

    if(widget.valorEscolhido == "cara"){
      resultado="images/moeda_cara.png";
    }else{
      resultado="images/moeda_coroa.png";
    }

    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          alignment: Alignment.center,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(resultado),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child:
                  GestureDetector(
                    child: Image.asset("images/botao_voltar.png"),
                    onTap: (){
                      Navigator.pop (context);
                    },
                  ),
                ),
              ]
          ),
        )
    );
  }
}
