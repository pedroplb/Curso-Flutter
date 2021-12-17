import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {

  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("Contato"),
          backgroundColor: Colors.lightGreen,
        ),
        body:SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("images/detalhe_contato.png"),
                      Text(
                        "Contato",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Celular: 11999999 ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "E-mail:email@email ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
