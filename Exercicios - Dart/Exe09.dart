void main() {
  double peso = 900;
  String genero = "feminino";
  double altura = 1.75;
 
  double pesoIdeal = (peso / (altura * altura));
  
  if (pesoIdeal < 19){
    if(genero == "feminino"){
    print("A senhora esta abaixo do seu peso ideal");
    }
  }
  else if(pesoIdeal >= 19 || pesoIdeal < 24 && genero == "feminino"){
    print("A senhora esta no seu peso ideal");
  }
  else if(pesoIdeal >= 19 || pesoIdeal < 24 && genero == "feminino"){
    print("A senhora esta acima do peso");
  }
}