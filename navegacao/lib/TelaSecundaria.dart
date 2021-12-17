import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {


  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundária"),
      ),
      body: Container(
        child:
            //Navigator.pop(context)
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "/");},
            child: Text("texto"),

        ),
      ),
    );
  }
}
