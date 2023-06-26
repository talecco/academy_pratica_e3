import 'dart:math';

void imprimirConversoes(List<int> numeros) {
  for (int numero in numeros) {
    String decimal = converterDecimal(numero);
    String binario = converterBinario(numero);
    String octal = converterOctal(numero);
    String hexadecimal = converterHexadecimal(numero);

    print(
        'decimal: $decimal, binário: $binario, octal: $octal, hexadecimal: $hexadecimal');
  }
}

String converterDecimal(int numero) {
  return numero.toString();
}

String converterBinario(int numero) {
  return numero.toRadixString(2);
}

String converterOctal(int numero) {
  return numero.toRadixString(8);
}

String converterHexadecimal(int numero) {
  return numero.toRadixString(16);
}

void main() {
  final random = Random();

  List<int> numeros = List.generate(15, (_) => random.nextInt(5000) + 1);

  imprimirConversoes(numeros);
}
