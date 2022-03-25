void main() {
  double a = 14;
  double b = 14;
  double c = 14;
  
  if (a + b < c || b + c < a || a + c < b){
    print ("Não forma um triangulo!");
  }
  else if(a == b && b == c && c == a){
    print ("Forma um triangulo Equilatero");
  }
  else if(a != b && b != c && c != a){
    print ("Forma um triangulo Escaleno");
  }
  else
    print ("Forma um triangulo Isósceles");
}