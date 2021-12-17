import 'package:entrada_dados/CampoTexto.dart';
import 'package:flutter/material.dart';
import 'EntradaCheckbox.dart';
import 'EntradaRadioButton.dart';
import 'EntradaSlider.dart';
import 'EntradaSwitch.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: CampoTexto(),
    //home: EntradaCheckbox(),
    //home: EntradaRadioButton(),
    //home: EntradaSwitch(),
    home: EntradaSlider(),
  ));
}