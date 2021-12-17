import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _resultado = "resultado";
  TextEditingController _cep = TextEditingController();

  _recuperarCep() async {

    //String cep = "08220630";
    var url = "https://viacep.com.br/ws/${_cep.text}/json/";
    print(_cep.text);
    http.Response response;
    response = await http.get(Uri.parse(url));

    // quebra o json em pedaços
    Map<String, dynamic> retorno = json.decode(response.body);

    String logradouro = retorno["logradouro"];
    String bairro = retorno["bairro"];

    print("logradouro: $logradouro");
    print("bairro: $bairro");

    setState(() {
      _resultado = "logradouro: $logradouro e bairro $bairro ";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo api"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Cep sem pontos ou traços. Ex:082220630"
              ),
              controller: _cep,
            ),
            RaisedButton(
                child: Text("pesquisar"),
                //sem parenteses para que seja executado no clique, se tiver com parenteses, sai executando direto.
                onPressed: _recuperarCep,
            ),
            Text(_resultado),
          ],
        ),
      ),
    );
  }
}
