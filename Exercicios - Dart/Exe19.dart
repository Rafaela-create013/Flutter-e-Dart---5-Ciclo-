void main() {
  Pessoa p1 = Pessoa("Marina", 24);
  Pessoa p2 = Pessoa("Carlos", 32);
  Pessoa p3 = Pessoa("Mariah", 20);
  Pessoa p4 = Pessoa("Claudio", 80);
  Pessoa p5 = Pessoa("Claudete", 90);
  
  final lista = [p1, p2, p3, p4, p5];
  
  
  for(Pessoa c in lista ) {
    print(c.dadosPessoa());
  }
}
 
class Veiculo {
  String nome;
  
  Veiculo(this.nome);
  
  String dadosPessoa(){
    return nome;
  }
  
}
 
class Pessoa extends Veiculo {
 
  int idade;
  
  Pessoa(nome, this.idade):super(nome);
  
  @override
  String dadosPessoa(){
    return "Pessoas: $nome, Idade: $idade";
  }
}
