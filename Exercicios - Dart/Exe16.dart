void main() {
  numero n1 = numero("1");
  numero n2 = numero("2");
  numero n3 = numero("3");
  numero n4 = numero("4");
  numero n5 = numero("5");
  numero n6 = numero("6");
  numero n7 = numero("7");
  numero n8 = numero("8");
  numero n9 = numero("9");
  numero n10 = numero("10");
  
  final numeros = [n1, n2, n3, n4, n5, n6, n7, n8, n9, n10];
  final numeros2 = [n10, n9, n8, n7, n6, n5, n4, n3, n2, n1];
  
  print("Ordem correta: $numeros");
    print("Ordem inversa: $numeros2");

}
 
class numero {
  String nome;
  
  numero(this.nome);
  
  String toString() {
    return nome;
  }
}
