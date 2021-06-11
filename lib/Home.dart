import 'dart:math';

import 'package:cara_ou_coroa/TelaResultado.dart';
import 'package:flutter/material.dart';

import 'Moeda.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61bd86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/logo.png'),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: GestureDetector(
              onTap: () {
                _escolherMoeda();
              },
              child: Image.asset('images/botao_jogar.png'),
            ),
          )
        ],
      ),
    );
  }


  void _escolherMoeda() {
    var moedas = Moeda.values;
    var indice = Random().nextInt(2);

    _abrirTelaResultado(moedas[indice]);

    //return moedas[indice];
  }

  _abrirTelaResultado(Moeda moeda) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaResultado(moeda),
        ));
  }
}
