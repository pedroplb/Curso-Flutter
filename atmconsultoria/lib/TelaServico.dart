import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
    @override
  _TelaServicoState createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("Serviços"),
          backgroundColor: Colors.cyanAccent,
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
                      Image.asset("images/detalhe_servico.png"),
                      Text(
                        "Nossos Servicos",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.cyanAccent,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Consultoria ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Cálculo de preços ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Acompanhamento de projetos ",
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
