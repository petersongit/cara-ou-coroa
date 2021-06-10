import 'package:cara_ou_coroa/TelaResultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _abrirTelaResultado() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaResultado(),
        ));
  }

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
                _abrirTelaResultado();
              },
              child: Image.asset('images/botao_jogar.png'),
            ),
          )
        ],
      ),
    );
  }
}
