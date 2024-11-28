class MonthlyChits {
  final bool error;
  final String accountBalance;
  final List<String> months;
  final List<String> monthPaid;
  final List<String> availableChit;

  MonthlyChits({
    required this.error,
    required this.accountBalance,
    required this.months,
    required this.monthPaid,
    required this.availableChit,
  });

  // Factory constructor to create an instance from a JSON object
  factory MonthlyChits.fromJson(Map<String, dynamic> json) {
    return MonthlyChits(
      error: json['error'] as bool,
      accountBalance: json['Account Balance'] as String,
      months: List<String>.from(json['Month']),
      monthPaid: List<String>.from(json['Month paid']),
      availableChit: List<String>.from(json['Available chit']),
    );
  }

  // Method to convert an instance to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'error': error,
      'Account Balance': accountBalance,
      'Month': months,
      'Month paid': monthPaid,
      'Available chit': availableChit,
    };
  }
}
