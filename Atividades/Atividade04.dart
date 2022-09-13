import 'package:intl/intl.dart';

void main() {
  final dateFormat = DateFormat('dd/MM/yyyy');
  final dataAgora = DateTime.now();

  var diasUteisRestantes = 18;
  var dataCalculada = dataAgora;

  while (diasUteisRestantes > 0) {
    dataCalculada = dataCalculada.add(Duration(days: 1));
    final Sabado = dataCalculada.weekday == DateTime.saturday;
    final Domingo = dataCalculada.weekday == DateTime.sunday;

    if (Sabado || Domingo) {
      continue;
    }

    diasUteisRestantes--;
  }

  print('Data atual: ${dateFormat.format(dataAgora)}');
  print('Data calculada: ${dateFormat.format(dataCalculada)}');
}