import 'package:flutter/material.dart';

import '../models/loan_model.dart';
import 'repay_button.dart';

class LoansTableRow extends StatelessWidget {
  final LoanModel loan;
  final bool isLast;

  const LoansTableRow({super.key, required this.loan, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: loan.isHighlighted ? Color(0xFFFEF2F2) : Colors.transparent,
        border: loan.isHighlighted
            ? Border.all(color: Color(0xFFEF4444).withValues(alpha: 0.2))
            : null,
        borderRadius: loan.isHighlighted ? BorderRadius.circular(8) : null,
      ),
      margin: loan.isHighlighted ? EdgeInsets.all(4) : EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                // Loan Amount
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (loan.isHighlighted)
                        const Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFEF4444),
                          ),
                        ),
                      Text(
                        loan.loanAmount,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: loan.isHighlighted
                              ? Color(0xFFEF4444)
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                // Left to Repay
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       if (loan.isHighlighted) const SizedBox(height: 16),
                      Text(
                        loan.loanAmount,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: loan.isHighlighted
                              ? Color(0xFFEF4444)
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                // Repay Button
                Expanded(
                  flex: 2,
                  child: loan.showRepay ? RepayButton() : SizedBox(),
                ),
              ],
            ),
          ),

          // Divider (except for last row and highlighted rows)
          if (!isLast && !loan.isHighlighted)
            Divider(
              height: 1,
              color: Color(0xFFE2E8F0),
              indent: 16,
              endIndent: 16,
            ),
        ],
      ),
    );
  }
}
