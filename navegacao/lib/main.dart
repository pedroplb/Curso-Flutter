import 'package:flutter/material.dart';
import 'package:navegacao/TelaSecundaria.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
    "/secundaria" : (context) => TelaSecundaria(),
    },
    home: TelaPriincipal(),
  ));
}

class TelaPriincipal extends StatefulWidget {
  @override
  _TelaPriincipalState createState() => _TelaPriincipalState();
}

class _TelaPriincipalState extends State<TelaPriincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            RaisedButton(
              child: Text("Ir para segunda tela"),
                onPressed: (){
                Navigator.pushNamed(context, "/secundaria");
              })
          ],
        ),
      ),
    );
  }
}
