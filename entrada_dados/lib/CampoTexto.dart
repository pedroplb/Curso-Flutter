import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Image.asset("images/logo.png"),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              "Saiba qual a melhor opção para o abastecimento do seu carro",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold
              )
            )
          ),
          Padding(
            padding: EdgeInsets.only(left: 25,right: 25, bottom: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço Álcool, ex: 1,59"
              ),
              controller: _textEditingController,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25,right: 25,bottom: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Preço Gasolina, ex: 1,59"
              ),
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text(
              "Salvar",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
            color: Colors.blue,
            onPressed: (){
              print("Valor digitado: " + _textEditingController.text);

            },

          )
        ],
      ),
    );
  }
}
