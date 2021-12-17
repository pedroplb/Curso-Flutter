import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){

    _itens = [];

    for (int i=0; i<10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo $i babozeira";
      item["descricao"] = "Descricao $i babozeira";
      _itens.add(item);
    }
  }


  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            Map<String, dynamic> item = _itens[indice];
            return ListTile(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text(item["titulo"]),
                        titlePadding: EdgeInsets.all(20),
                        titleTextStyle: TextStyle(
                          color: Colors.orange,
                          backgroundColor: Colors.lime,
                        ),
                        content: Text(item["descricao"]),
                        actions: [
                          FlatButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Text("Voltar")
                          )
                        ],
                      );
                    }
                );
              },
              /*onLongPress: (){
                    },*/
              title: Text(item["titulo"]),
              subtitle: Text(item["descricao"]),
            );
          },
        ),
      ),
    );
  }
}
