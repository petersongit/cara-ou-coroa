import 'package:flutter/material.dart';

import 'Moeda.dart';

class TelaResultado extends StatefulWidget {
 // const TelaResultado({Key key}) : super(key: key);
  Moeda moeda;

  TelaResultado(Moeda moeda) {
    this.moeda = moeda;
  }

  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  var _imgMoeda = '';

  @override
  Widget build(BuildContext context) {
    carregarImagemMoeda(widget.moeda);

    return Container(
      color: Color(0xff61bd86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            _imgMoeda,
          ),
          GestureDetector(
              child: Image.asset(
                'images/botao_voltar.png',
              ),
              onTap: () {
                Navigator.pop(context);
              }
              //_mostrarMoeda,
              ),
        ],
      ),
    );
  }

  void carregarImagemMoeda(Moeda moeda) {
    //Moeda moeda = _escolherMoeda();

    switch (widget.moeda) {
      case Moeda.CARA:
        setState(() {
          _imgMoeda = 'images/moeda_cara.png';
        });
        break;
      case Moeda.COROA:
        setState(() {
          _imgMoeda = 'images/moeda_coroa.png';
        });
        break;
    }
  }
}
