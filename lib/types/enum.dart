enum IMLangType {
  zh(0),
  en(1),
  vi(2);

  final int value;
  const IMLangType(this.value);

  static IMLangType fromValue(int value) {
    return IMLangType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => IMLangType.zh,
    );
  }
}
