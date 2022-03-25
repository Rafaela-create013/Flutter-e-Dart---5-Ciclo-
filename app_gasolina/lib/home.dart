import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String infoResultado = "0";
  int contador = 0;

  void _calcularSoma() {
    setState(() {
      contador = contador + 1;
      infoResultado = contador.toString();
    });
  }

  void _calcularSubtracao() {
    setState(() {
      contador = contador - 1;
      infoResultado = contador.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Contador de pessoas"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 2, 59, 55),
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _texto(infoResultado),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _botaoSoma(),
          _botaoDiminui(),
        ],
      )
        ],
      ),
    );
  }

  _botaoSoma() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularSoma,
          child:
              Text("+", style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Color.fromARGB(255, 2, 59, 55),
        ),
      ),
    );
  }

  _botaoDiminui() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularSubtracao,
          child:
              Text("-", style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Color.fromARGB(255, 2, 59, 55),
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }
}
