class Chit {
  String month;
  int totalMonths;
  int amount;
  String startDate;
  String endDate;
  int contributionAmount;
  int due;
  int dueAmount;

  // Constructor
  Chit({
    required this.month,
    required this.totalMonths,
    required this.amount,
    required this.startDate,
    required this.endDate,
    required this.contributionAmount,
    required this.due,
    required this.dueAmount,
  });

  // Factory method to create a Chit object from JSON
  factory Chit.fromJson(Map<String, dynamic> json) {
    return Chit(
      month: json['Month'] ?? 'Unknown Month',
      totalMonths: int.tryParse(json['Total Months']) ?? 0, // Converting string to int
      amount: json['Amount'] ?? 0,
      startDate: json['Start Date'] ?? 'Unknown Start Date',
      endDate: json['End Date'] ?? 'Unknown End Date',
      contributionAmount: json['Contribution Amount'] ?? 0,
      due: json['Due'] ?? 0,
      dueAmount: json['Due Amount'] ?? 0,
    );
  }

  // Method to convert a Chit object to JSON
  Map<String, dynamic> toJson() {
    return {
      'Month': month,
      'Total Months': totalMonths.toString(), // Converting int to string
      'Amount': amount,
      'Start Date': startDate,
      'End Date': endDate,
      'Contribution Amount': contributionAmount,
      'Due': due,
      'Due Amount': dueAmount,
    };
  }
}
