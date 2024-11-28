class AvailableChit {
  final String chitPotName;
  final int amount;
  final int totalMonth;
  final int due;

  AvailableChit({
    required this.chitPotName,
    required this.amount,
    required this.totalMonth,
    required this.due,
  });

  // Factory constructor to create an instance from JSON
  factory AvailableChit.fromJson(Map<String, dynamic> json) {
    return AvailableChit(
      chitPotName: json['Chit_pot_name'] ?? 'Unknown Chit',
      amount: json['Amount'] ?? 0,
      totalMonth: json['Total_month'] ?? 0,
      due: json['Due'] ?? 0,
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'Chit_pot_name': chitPotName,
      'Amount': amount,
      'Total_month': totalMonth,
      'Due': due,
    };
  }
}
