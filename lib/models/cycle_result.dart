class CycleResult {
  final int cycleNumber;

  final String symbol;

  final int splitCount;
  final double targetProfit;

  final DateTime startDate;
  final DateTime endDate;

  final double startCapital;
  final double endCash;

  final double totalProfit;
  final double profitRate;

  final int investmentDays;

  final double maxT;
  final int maxQty;
  final double maxExposure;

  /// normalExit
  /// forcedExit
  final String completionReason;

  CycleResult({
    required this.cycleNumber,

    required this.symbol,

    required this.splitCount,
    required this.targetProfit,

    required this.startDate,
    required this.endDate,

    required this.startCapital,
    required this.endCash,

    required this.totalProfit,
    required this.profitRate,

    required this.investmentDays,

    required this.maxT,
    required this.maxQty,
    required this.maxExposure,

    required this.completionReason,
  });

  Map<String, dynamic> toJson() {
    return {
      'cycleNumber': cycleNumber,

      'symbol': symbol,

      'splitCount': splitCount,
      'targetProfit': targetProfit,

      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),

      'startCapital': startCapital,
      'endCash': endCash,

      'totalProfit': totalProfit,
      'profitRate': profitRate,

      'investmentDays': investmentDays,

      'maxT': maxT,
      'maxQty': maxQty,
      'maxExposure': maxExposure,

      'completionReason': completionReason,
    };
  }

  factory CycleResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return CycleResult(
      cycleNumber:
          json['cycleNumber'] ?? 0,

      symbol:
          json['symbol'] ?? 'SOXL',

      splitCount:
          json['splitCount'] ?? 20,

      targetProfit:
          (json['targetProfit'] ?? 20)
              .toDouble(),

      startDate:
          DateTime.parse(
              json['startDate']),

      endDate:
          DateTime.parse(
              json['endDate']),

      startCapital:
          (json['startCapital'] ?? 0)
              .toDouble(),

      endCash:
          (json['endCash'] ?? 0)
              .toDouble(),

      totalProfit:
          (json['totalProfit'] ?? 0)
              .toDouble(),

      profitRate:
          (json['profitRate'] ?? 0)
              .toDouble(),

      investmentDays:
          json['investmentDays'] ??
              0,

      maxT:
          (json['maxT'] ?? 0)
              .toDouble(),

      maxQty:
          json['maxQty'] ?? 0,

      maxExposure:
          (json['maxExposure'] ?? 0)
              .toDouble(),

      completionReason:
          json['completionReason'] ??
              'normalExit',
    );
  }
}