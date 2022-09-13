void main(){
  List<int> num = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  imprimir(num);
}
void imprimir(List<int> num){
  for(final decimal in num..sort()){
    print("decimal: $decimal, binario: ${decimal.toRadixString(2)}, octal:${decimal.toRadixString(8)}, Hexadecimal:${decimal.toRadixString(16)}");
  }
}