import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String infoResultado = "";

  void _calcularValor() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);

      double resultado = peso / (altura * altura);

      if(resultado < 18.5){
        infoResultado = 'Você esta abaixo do peso!';
      }else if(resultado >= 18.5 && resultado <= 24.9){
        infoResultado = 'O seu peso é o ideal';
      }else if(resultado >= 25 && resultado <= 29.9){
        infoResultado = 'Você esta com sobrepeso!';
      }else if(resultado >= 30 && resultado <= 34.9){
        infoResultado = 'Você esta com obsidade de Grau I!';
      }else if(resultado >= 35 && resultado <= 39.9){
        infoResultado = 'Você esta com obsidade de Grau II!';
      }
      else{
       infoResultado = 'Você esta com obsidade de Grau III!'; 
      }

      
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
      title: Text("Calculo de IMC"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 10, 50, 182),
    );
  }

  _corpo() {
    var children2 = <Widget>[
          _foto(),
          _campo("Digite o seu peso:", pesoController),
          _campo("Digite a sua altura:", alturaController),
          _botao(),
          _texto(infoResultado),
        ];
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children2,
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo,
          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      textAlign: TextAlign.center,
      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularValor,
          child: Text("Calcular IMC",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Color.fromARGB(255, 6, 170, 6),
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25.0),
    );
  }
}
 _foto() {
    return Center(
      child: Image.network(
        'https://img.medscapestatic.com/pt/thumbnail_library/6505381-thumb.jpg',
        height: 250,
        width: 250,
      ),
    );
  }

