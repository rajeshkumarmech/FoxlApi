class Chit {
  final String chitPotName;
  final int amount;

  Chit({
    required this.chitPotName,
    required this.amount,
  });

  // Factory method to create a Chit instance from a JSON object
  factory Chit.fromJson(Map<String, dynamic> json) {
    return Chit(
      chitPotName: json['Chit_pot_name'] ?? 'Unknown',
      amount: json['Amount'] ?? 0,
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

  // Factory method to create a ChitResponse instance from a JSON object
  factory ChitResponse.fromJson(Map<String, dynamic> json) {
    return ChitResponse(
      error: json['error'] ?? true,
      availableChits: (json['available_chits'] as List<dynamic>)
          .map((chit) => Chit.fromJson(chit as Map<String, dynamic>))
          .toList(),
    );
  }
}
