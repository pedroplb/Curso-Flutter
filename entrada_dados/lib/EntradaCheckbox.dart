import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool? _cmdBrasileira = false;
  bool? _cmdMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Container(
        child: Column(
          children: [

            CheckboxListTile(
              title: Text("Comida Brasileira"),
                subtitle: Text("Teste"),
                //activeColor: Colors.redAccent,
                //secondary: Icon(Icons.add_box),
                //selected: true,
                value: _cmdBrasileira,
                onChanged: (bool? valor){
                setState(() {
                  _cmdBrasileira= valor;
                });

                }
            ),
            CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("Teste"),
                //activeColor: Colors.redAccent,
                //secondary: Icon(Icons.add_box),
                //selected: true,
                value: _cmdMexicana,
                onChanged: (bool? valor){
                  setState(() {
                    _cmdMexicana= valor;
                  });

                }
            ),
            RaisedButton(
              child: Text("Salvar"),
                onPressed: (){
                print ("comida brasileira $_cmdBrasileira");
                print ("comida mexicana: $_cmdMexicana");
                }
                
            )

          ],
        ),
      ),
    );
  }
}
