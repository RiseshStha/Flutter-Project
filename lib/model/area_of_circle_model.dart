class AreaOfCicrleModel {
  double? radius;
  AreaOfCicrleModel({
    required this.radius,
  });

  double calculateAreaOfCircle() {
    return (22 / 7) * (radius ?? 0) * (radius ?? 0);
  }
}
