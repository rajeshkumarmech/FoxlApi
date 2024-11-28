class Chit {
  final String month;
  final int amount;
  final String startDate;
  final String endDate;
  final int brokage;

  Chit({
    required this.month,
    required this.amount,
    required this.startDate,
    required this.endDate,
    required this.brokage,
  });

  // Factory constructor to create a Chit from a JSON map
  factory Chit.fromJson(Map<String, dynamic> json) {
    return Chit(
      month: json['Month'] ?? 'Unknown',
      amount: json['Amount'] ?? 0,
      startDate: json['Start_Date'] ?? '',
      endDate: json['End_Date'] ?? '',
      brokage: json['Brokage'] ?? 0,
    );
  }
}

class ChitResponse {
  final bool error;
  final List<Chit> availableChits;

  ChitResponse({
    required this.error,
    required this.availableChits,
  });

  // Factory constructor to create a ChitResponse from a JSON map
  factory ChitResponse.fromJson(Map<String, dynamic> json) {
    var availableChitsJson = json['available_chits'] as List<dynamic>? ?? [];
    List<Chit> availableChitsList = availableChitsJson
        .map((chitJson) => Chit.fromJson(chitJson as Map<String, dynamic>))
        .toList();

    return ChitResponse(
      error: json['error'] ?? true,
      availableChits: availableChitsList,
    );
  }
}
