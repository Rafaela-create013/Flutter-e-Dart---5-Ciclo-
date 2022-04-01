import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String infoResultado = "";

  void _calcularValor() {
    setState(() {
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
      title: Text("OLX"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 85, 10, 207),
    );
  }
    _corpo() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        child: Text("Hello Turma!"),
      ),
      child: PageView(
        children: <Widget>[
          _foto('cafeteira.jpg'),
          _foto('cama.jpg'),
          _foto('sofa.jpg'),
        ],
      ),
    );
  }
 
  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 300,
      width: 300,
      //fit: BoxFit.fill,
      fit: BoxFit.contain,
      //fit: BoxFit.cover,
    );
  }
}  
