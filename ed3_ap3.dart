import 'dart:math';

double calcularArea(double raio) {
  return pi * raio * raio;
}

double calcularPerimetro(double raio) {
  return 2 * pi * raio;
}

void main() {
  final random = Random();

  List<int> raios = List.generate(10, (_) => random.nextInt(100) + 1);

  for (int raio in raios) {
    double area = calcularArea(raio.toDouble());
    double perimetro = calcularPerimetro(raio.toDouble());

    print(
        'Raio: $raio, área: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}');
  }
}
