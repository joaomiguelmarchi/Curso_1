void main(){

List<int> num = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
print("For: ${somafor(num)}");
print("Lista: ${somaLista(num)}");
print("Recursivo: ${somaRecursivo(num)}");
print("While: ${somawhile(num)}");

}
int somafor(List<int> num){
  int somaf=0;
  for (final numero in num){
    somaf=somaf+numero;
  }
  return somaf;
}
int somawhile(List<int> num){
  var somaw=0;
  final a =num.iterator;
  while(a.moveNext()){
    somaw += a.current;
  }
  return(somaw);
}

int somaLista(List<int> num) => num.reduce((a, b) => a + b);

int somaRecursivo(List<int> num) {
  if (num.isEmpty) {
    return 0;
  }
  return num.first + somaRecursivo(num.sublist(1));
}