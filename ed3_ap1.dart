import 'dart:math';

List<int> ListaAleatoria(int tamanho) {
  final random = Random();
  return List.generate(tamanho, (_) => random.nextInt(100));
}

void imprimirLista(List<int> lista) {
  if (lista.isEmpty) {
    print('Lista vazia');
  } else {
    String listaFormatada = lista.join(', ');
    print('Lista: $listaFormatada');
  }
}

List<int> somarListas(List<int> lista1, List<int> lista2) {
  if (lista1.length != lista2.length) {
    return [];
  }

  List<int> resultado = [];

  for (int i = 0; i < lista1.length; i++) {
    int soma = lista1[i] + lista2[i];
    print('Somando ${lista1[i]} + ${lista2[i]}');
    resultado.add(soma);
  }

  return resultado;
}

void main() {
  List<int> lista1 = ListaAleatoria(5);
  List<int> lista2 = ListaAleatoria(5);

  imprimirLista(lista1);
  imprimirLista(lista2);

  List<int> resultado = somarListas(lista1, lista2);

  imprimirLista(resultado);
}
