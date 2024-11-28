// ChitResponse.dart

class ChitResponse {
  final bool error;
  final List<AvailableChit> availableChits;

  ChitResponse({
    required this.error,
    required this.availableChits,
  });

  // Factory method to create a ChitResponse from JSON
  factory ChitResponse.fromJson(Map<String, dynamic> json) {
    return ChitResponse(
      error: json['error'] ?? false,
      availableChits: json['available_chits'] != null
          ? (json['available_chits'] as List)
              .map((chit) => AvailableChit.fromJson(chit))
              .toList()
          : [],
    );
  }

  // Method to convert ChitResponse to JSON
  Map<String, dynamic> toJson() {
    return {
      'error': error,
      'available_chits': availableChits.map((chit) => chit.toJson()).toList(),
    };
  }
}

class AvailableChit {
  final String chitName;
  final int targetAmount;

  AvailableChit({
    required this.chitName,
    required this.targetAmount,
  });

  // Factory method to create an AvailableChit from JSON
  factory AvailableChit.fromJson(Map<String, dynamic> json) {
    return AvailableChit(
      chitName: json['chit_name'] ?? '',
      targetAmount: json['target_amount'] ?? 0,
    );
  }

  // Method to convert AvailableChit to JSON
  Map<String, dynamic> toJson() {
    return {
      'chit_name': chitName,
      'target_amount': targetAmount,
    };
  }
}
