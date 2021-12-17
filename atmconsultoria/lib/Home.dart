import 'package:atmconsultoria/TelaCliente.dart';
import 'package:atmconsultoria/TelaContato.dart';
import 'package:atmconsultoria/TelaEmpresa.dart';
import 'package:atmconsultoria/TelaServico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _tela = "";

  _abrirTela(String _telaEscolhida){

    switch (_telaEscolhida) {
      case "menu empresa":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelaEmpresa()),
        );
        break;
      case "menu servico":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelaServico()),
        );
        break;
      case "menu cliente":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelaCliente()),
        );
        break;
      case "menu contato":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelaContato()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "ATM Consultoria",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Padding(
                padding: EdgeInsets.only(top:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Image.asset("images/menu_empresa.png"),
                      onTap: (){
                        _tela = "menu empresa";
                        _abrirTela(_tela);
                        print(_tela);
                      },
                    ),
                    GestureDetector(
                      child: Image.asset("images/menu_servico.png"),
                      onTap: (){
                        _tela = "menu servico";
                        _abrirTela(_tela);
                        print(_tela);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Image.asset("images/menu_cliente.png"),
                      onTap: (){
                        _tela = "menu cliente";
                        _abrirTela(_tela);
                        print(_tela);
                      },
                    ),
                    GestureDetector(
                      child: Image.asset("images/menu_contato.png"),
                      onTap: (){
                        _tela = "menu contato";
                        _abrirTela(_tela);
                        print(_tela);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
