import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {

  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("Clientes"),
            backgroundColor: Colors.lime
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
                      Image.asset("images/detalhe_cliente.png"),
                      Text(
                        "Cliente",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.lime,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child:
                    Image.asset("images/cliente1.png")
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Empresa de Software",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child:
                    Image.asset("images/cliente2.png")
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Empresa de Auditoria",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
