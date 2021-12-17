import 'package:flutter/material.dart';


class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String _escolhaUsuario = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Radio Button"),
      ),
      body: Container(
        child: Column(
          children: [
            RadioListTile(
              title: Text("Masculino"),
                value: "m",
                groupValue: _escolhaUsuario,
              onChanged: (String? escolha){
                setState(() {
                  _escolhaUsuario = escolha!;
                });
                print("Escolha: $escolha");
              },
            ),
            RadioListTile(
              title: Text("Femininno"),
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha){
                setState(() {
                  _escolhaUsuario = escolha!;
                });
                print("Escolha: $escolha");
              },
            ),
            RaisedButton(
                child: Text("Salvar"),
                onPressed: (){
                  print ("opcao escolhida $_escolhaUsuario");
                }

            )




            /*
            Text("Masculino"),
            Radio(
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha){
                  setState(() {
                    _escolhaUsuario = escolha!;
                  });
                  print("Escolha: $escolha");
                },
            ),
            Text("Feminino"),
            Radio(
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String? escolha){
                  setState(() {
                    _escolhaUsuario = escolha!;
                  });
                  print("Escolha: $escolha");
                },
            )*/



          ],
        )
      ),
    );
  }
}
