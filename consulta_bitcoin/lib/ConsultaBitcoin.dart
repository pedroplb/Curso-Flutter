import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ConsultaBitcoin extends StatefulWidget {
  const ConsultaBitcoin({Key? key}) : super(key: key);

  @override
  _ConsultaBitcoinState createState() => _ConsultaBitcoinState();
}

class _ConsultaBitcoinState extends State<ConsultaBitcoin> {

  String _valorConsultado = "R\$ 0.00";

  void _consultaValor() async{

    String url = "https://blockchain.info/ticker";
    http.Response response;
    response = await http.get(Uri.parse(url));

    Map<String, dynamic> retorno = json.decode(response.body);

    /* retorna varios objetos:
    "AUD" : {"15m" : 64120.53, "last" : 64120.53, "buy" : 64120.53, "sell" : 64120.53, "symbol" : "AUD"},
    "BRL" : {"15m" : 243922.76, "last" : 243922.76, "buy" : 243922.76, "sell" : 243922.76, "symbol" : "BRL"},
    por isso precisa de 2 índices [objeto][campo]
     */

    String _valor = retorno["BRL"]["last"].toString();

    print(response.body);

    setState(() {
      _valorConsultado = "R\$ $_valor" ;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only (left:60, right:60, bottom:15),
                  child: Image.asset("imagens/bitcoin.png")
              ),
              Padding(
                  padding: EdgeInsets.only (left:60, right:60, bottom:15),
                  child: Text(
                    "$_valorConsultado",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only (left:60, right:60, bottom:15),
                  //SizedBox é para deixar na largura ou altura do componente pai, neste caso a coluna
                  child: SizedBox(
                    width: double.infinity,
                      child: RaisedButton(
                        child: Text(
                            "Atualizar",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        onPressed: _consultaValor,
                        color: Colors.orange,
                      )
                  )
              ),
            ],
          ),
        )
    );

  }
}
