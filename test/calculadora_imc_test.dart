import 'package:test/test.dart';

import '../bin/calculadora_imc.dart';

void main() {
  test('calculate', () {
    expect(calcularImc(1.80, 80), 24.691358024691358);
  });
}
