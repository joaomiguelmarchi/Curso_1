
import 'dart:ffi';
import 'dart:math' as math;
void main(){
  final List<double> raios = [5,8,12,7.3,18,2,25];
  calc(raios);
}
double calcArea (double raio) => 3.14 * math.pow(raio, 2);

double calcper (double raio) => 2 * 3.14 * raio;

void calc(List<double> raios){
  for (final raio in raios){
    final double  area = calcArea(raio);
    final double perimetro= calcper(raio);
    print("Raio: $raio, area: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}");
  }
}