import 'dart:math' as math;
void main(){
  List<String> nomes = ['Ana',
    'Maria',
    'Francisco',
    'João',
    'Pedro',
    'Gabriel',
    'Rafaela',
    'Marcio',
    'Jose',
    'Carlos',
    'Patricia',
    'Helena',
    'Camila',
    'Mateus',
    'Gabriel',
    'Samuel',
    'Karina',
    'Antonio',
    'Daniel',
    'Joel',
    'Cristiana',
    'Sebastião',
    'Paula'];
  List<String> sobrenomes = ['Silva',
    'Souza',
    'Almeida',
    'Azevedo',
    'Braga',
    'Barros',
    'Campos',
    'Cardoso',
    'Costa',
    'Teixeira',
    'Santos',
    'Rodrigues',
    'Ferreira',
    'Alves',
    'Pereira',
    'Lima',
    'Gomes',
    'Ribeiro',
    'Carvalho',
    'Lopes',
    'Barbosa'];
  for (int i=0;i<10;i++){
    final aleatorio = math.Random();
    final nome = nomes[aleatorio.nextInt(nomes.length)];
    final sobrenome = sobrenomes[aleatorio.nextInt(sobrenomes.length)];
    final nomecompleto=("$nome $sobrenome");
    print(nomecompleto);
  }
}