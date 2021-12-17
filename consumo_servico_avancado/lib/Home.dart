import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'Post.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _urlBase = "https://jsonplaceholder.typicode.com/";
  Post post = Post(0,0,"","");

  //recupera uma lista de objetos
  Future<List<Post>> _recuperarPostagens() async{

    http.Response response = await http.get(Uri.parse(_urlBase + "posts"));
    var dadosJson = json.decode(response.body);
    List<Post> postagens = List.empty(growable: true);

    for( var post in dadosJson){
      Post p = Post(post["userId"],post["id"],post["title"],post["body"],);
      postagens.add(p);
    }
    return postagens;
  }

  _post() async{

    Post post = Post(10,10,"nome","pedro");

    var corpo = json.encode({
      post.toJson()
    });

    http.Response response = await http.post(
      Uri.parse(_urlBase + "posts"),
      headers: {'Content-type': 'application/json; charset=UTF-8'},
      body: corpo,
    );

    print(response.statusCode);
    print(response.body);

  }

  _put() async{


    Post post = Post(10,10,"nome","pedro");

    var corpo = json.encode({
      post.toJson()
    });

    http.Response response = await http.put(
      Uri.parse(_urlBase + "posts/2"),
      headers: {'Content-type': 'application/json; charset=UTF-8'},
      body: corpo,
    );

    print(response.statusCode);
    print(response.body);

  }

  _patch() async{

    Post post = Post(10,10,"nome","pedro");

    var corpo = json.encode({
      post.toJson()
    });

    http.Response response = await http.patch(
      Uri.parse(_urlBase + "posts/2"),
      headers: {'Content-type': 'application/json; charset=UTF-8'},
      body: corpo,
    );

    print(response.statusCode);
    print(response.body);

  }

  _delete()async{

    var retorno = "";

    http.Response response = await http.delete(
      Uri.parse(_urlBase + "posts/2"),
    );
    print(response.statusCode);
    print(response.body);

    if (response.statusCode ==200){
      retorno = "deletado";
    }else{
      retorno = "erro ${response.statusCode}";
    }

    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            content: Text(retorno),
            actions: [
              RaisedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("voltar"),
              )
            ],
          );
        }
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo Avançado"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              children: [
                RaisedButton(
                  //se colocar _post() sai executando qdo carrega o scaffold
                    onPressed:  _post,
                    child: Text("Salvar")
                ),
                RaisedButton(
                    onPressed: _put,
                    child: Text("Atualizar Put")
                ),
                RaisedButton(
                    onPressed: _patch,
                    child: Text("Atualizar Patch")
                ),
                RaisedButton(
                    onPressed: _delete,
                    child: Text("Excluir")
                ),
              ],
            ),
            Expanded(
                child: FutureBuilder<List<Post>>(
                    future: _recuperarPostagens(),
                    builder: (context, snapshot){
                      switch(snapshot.connectionState){
                        case ConnectionState.none:
                        case ConnectionState.waiting:
                          return CircularProgressIndicator();

                        case ConnectionState.active:
                        case ConnectionState.done:
                          if(snapshot.hasError){
                            print("Erro" + snapshot.hasData.toString());
                          }else{
                            return ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index){

                                  List<Post> lista = snapshot.data!;
                                  Post post = lista[index];

                                  return ListTile(
                                    title: Text(post.title),
                                    subtitle: Text(post.id.toString()),
                                  );
                                }

                            );

                          }
                          break;
                      }
                      return Text("");
                    }
                )
            )
          ],
        ),
      ),
    );
  }
}
