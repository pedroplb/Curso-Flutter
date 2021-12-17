import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlcoolGasolina  extends StatefulWidget {
  @override
  _AlcoolGasolinaState createState() => _AlcoolGasolinaState();
}

class _AlcoolGasolinaState extends State<AlcoolGasolina> {

  TextEditingController _teAlcool = TextEditingController();
  TextEditingController _teGasolina = TextEditingController();
  String _resultado="Resultado";

  void _calcular(){

    double? vlAlcool = double.tryParse( _teAlcool.text );
    double? vlGasolina = double.tryParse(_teGasolina.text);

    if ((vlAlcool!/vlGasolina!)>=0.7){
      setState(() {
        this._resultado = "Gasolina";
      });
    }else{
      setState(() {
        this._resultado = "Alcool";
      });
    }

    _teGasolina.clear();
    _teAlcool.clear();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Álcool ou Gasolina"),
        ),

        body: Container(
          child: SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    controller: _teAlcool,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25,right: 25,bottom: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Preço Gasolina, ex: 1,59"
                    ),
                    controller: _teGasolina,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: RaisedButton(
                      child: Text(
                        "Calcular",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),
                      color: Colors.blue,
                      onPressed: _calcular
                  ),
                ),
                Padding (
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 25),
                  child: Text(
                    _resultado,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
