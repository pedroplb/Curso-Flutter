import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaNotif = false;
  bool _escolhaImagem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child:Column(
            children: [

              SwitchListTile(
                  title: Text("Receber notificação?"),
                  value: _escolhaNotif,
                  onChanged: (bool? valor) {
                    setState(() {
                      _escolhaNotif = valor!;
                    });
                  }),
              SwitchListTile(
                  title: Text("Carregar imagens?"),
                  value: _escolhaImagem,
                  onChanged: (bool? valor) {
                    setState(() {
                      _escolhaImagem = valor!;
                    });
                  }),
              RaisedButton(
                child: Text("Salvar"),
                  onPressed: (){
                    print("Notificação $_escolhaNotif");
                    print("Imagem $_escolhaImagem");
                  })

              /*
              Switch(
              value: _escolhaUsuario,
              onChanged: (bool? valor){
                setState(() {
                  _escolhaUsuario = valor!;
                });
              },
            ),
              Text("Receber notificação"),*/
            ]),
      ),
    );
  }
}
