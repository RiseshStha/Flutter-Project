class ArithmeticModel {
  int? first;
  int? second;

  ArithmeticModel({
    required this.first,
    required this.second,
  });

  int add() {
    return first! + second!;
  }
}
