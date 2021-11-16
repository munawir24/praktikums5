import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'KEGEMUKAN';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'KEKURUSAN';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return "Anda memiliki berat badan yang lebih tinggi dari biasanya. Cobalah berolahraga ebih banyak";
    } else if (_bmi > 18.5) {
      return "Anda memiliki berat badan yang baik. Kerja yang baik!";
    } else {
      return "Anda memiliki berat badan lebih rendah dari normal. Anda bisa makan sedikit lebih banyak.";
    }
  }
}
