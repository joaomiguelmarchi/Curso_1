void main(){
  List<double> celcius= [0.0,4.2,15,18.1,21.7,32.0,40.0,41.0];
  calc(celcius);
}
double fahrenheit(double c) => c * 1.8 +32;
double kelvin (double c) => c+273;
void calc(List<double> celcius){
  for (final c in celcius){
    final double tempF=fahrenheit(c);
    final double tempK=kelvin(c);
    print("Celcius $c, Fahrenheit: ${tempF.toStringAsFixed(2)}, Kelvin: ${tempK.toStringAsFixed(2)}");
  }
}