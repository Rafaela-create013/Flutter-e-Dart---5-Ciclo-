void main() {
double x = 2;  
int a = 10;
int b = 40;
  
    if(b < a){
      print("O valor de b deve ser maior que o valor de a!");
    }
    else{
      int i = 0;
      for (i=a; i<=b; i++){
      double result = x * i;
      print("$x X $i = $result");
    }
  }
}
  