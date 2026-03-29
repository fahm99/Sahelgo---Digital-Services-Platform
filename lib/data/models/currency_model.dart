class Currency {
  final String code;
  final String name;
  final String icon;
  final double buyRate;
  final double sellRate;
  final double changePercent;
  final bool isPositive;

  Currency({
    required this.code,
    required this.name,
    required this.icon,
    required this.buyRate,
    required this.sellRate,
    required this.changePercent,
    required this.isPositive,
  });
}
