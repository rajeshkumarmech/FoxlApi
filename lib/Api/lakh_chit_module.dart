class ChitResponse {
  final bool error;
  final String chitType;
  final List<MonthData> month;

  ChitResponse({
    required this.error,
    required this.chitType,
    required this.month,
  });

  // Factory constructor to create an instance from a JSON map
  factory ChitResponse.fromJson(Map<String, dynamic> json) {
    return ChitResponse(
      error: json['error'],
      chitType: json['Chit Type'],
      month: List<MonthData>.from(
        json['Month'].map((monthData) => MonthData.fromJson(monthData)),
      ),
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'error': error,
      'Chit Type': chitType,
      'Month': month.map((monthData) => monthData.toJson()).toList(),
    };
  }
}

class MonthData {
  final String month;
  final String investorCount;

  MonthData({
    required this.month,
    required this.investorCount,
  });

  // Factory constructor to create an instance from a JSON map
  factory MonthData.fromJson(Map<String, dynamic> json) {
    return MonthData(
      month: json['month'],
      investorCount: json['Investor Count'],
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'month': month,
      'Investor Count': investorCount,
    };
  }
}
