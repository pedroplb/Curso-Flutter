import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {

  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double _valor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child:Column(
          children: [
            Slider(
                value: _valor,
                min: 0,
                max: 10,
                label: "$_valor",
                divisions: 10,
                onChanged: (double novoValor){
                  setState(() {
                    _valor = novoValor;
                  });
                },
            ),

            RaisedButton(
              child: Text("Salvar"),
                onPressed: (){
                  print("Valor: $_valor");
                }
            )
          ],
        )
      ),
    );
  }
}
