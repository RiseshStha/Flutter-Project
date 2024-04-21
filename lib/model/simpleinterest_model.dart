class SimpleInterestModel {
  double? principle;
  double? rate;
  double? time;

  SimpleInterestModel({
    required this.principle,
    required this.rate,
    required this.time,
  });

  double simpleInterest() {
    return ((principle ?? 0) * (rate ?? 0) * (time ?? 0)) / 100;
  }
}
