class LoanModel {
  final String loanAmount;
  final String leftToRepay;
  final bool showRepay;
  final bool isHighlighted;

  LoanModel({
    required this.loanAmount,
    required this.leftToRepay,
    this.showRepay = true,
    this.isHighlighted = false,
  });
}
