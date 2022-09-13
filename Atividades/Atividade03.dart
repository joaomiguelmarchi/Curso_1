const vogais = 'aeiou';
const consoantes = 'bcdfghjklmnpqrstvwxyz';

void main() {
  final paragrafo = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';
  final pal = contPal(paragrafo);
  final TT = contTT(paragrafo);
  final numF = contF(paragrafo);
  final numV = contV(paragrafo);
  final cons = catchCons(paragrafo);

  print('Paragrafo: $paragrafo');
  print('Número de palavras: $pal');
  print('Tamanho do texto: $TT');
  print('Número de frases: $numF');
  print('Número de vogais: $numV');
  print('Consoantes encontradas: $cons');
}

int contPal(String paragrafo) {
  if (paragrafo.trim().isEmpty) {
    return 0;
  }
  return paragrafo.split(' ').length;
}

int contTT(String paragrafo) => paragrafo.trim().length;

int contF(String paragrafo) {
  var contadorFrases = 0;
  final frases = paragrafo.trim().split('.');
  for (final frase in frases) {
    if (frase.isNotEmpty) {
      contadorFrases++;
    }
  }
  return contadorFrases;
}

int contV(String paragrafo) {
  var contadorVogais = 0;
  for (final rune in paragrafo.trim().runes) {
    final caractere = String.fromCharCode(rune).toLowerCase();
    if (vogais.contains(caractere)) {
      contadorVogais++;
    }
  }
  return contadorVogais;
}

String catchCons(String paragrafo) {
  final consoantesEncontradas = <String>{};

  for (final rune in paragrafo.trim().runes) {
    final caractere = String.fromCharCode(rune).toLowerCase();
    final ehConsoante = consoantes.contains(caractere);
    if (!ehConsoante) {
      continue;
    }

    final jaEncontrada = consoantesEncontradas.contains(caractere);
    if (!jaEncontrada) {
      consoantesEncontradas.add(caractere);
    }
  }
  final ordenado = (consoantesEncontradas.toList())..sort();

  return ordenado.join(', ');
}