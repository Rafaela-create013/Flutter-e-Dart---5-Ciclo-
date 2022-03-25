void main() {
  double prod1 = 5;
  double prod2 = 20;
  double prod3 = 30;
  double prod4 = 45;
  double prod5 = 60;
 
  double dinheiro = 500;
  
  double total = prod1 + prod2 + prod3 + prod4 + prod5;
  double troco = dinheiro - total;
 
  print("O total dos produtos é de = $total");
  print("O valor pago foi de = $dinheiro, e o troco é de $troco");
}
