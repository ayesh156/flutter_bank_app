import 'package:flutter/material.dart';

import '../models/loan_model.dart';
import '../components/loans_table_header.dart';
import '../components/loans_table_row.dart';

class LoansTable extends StatelessWidget {
  LoansTable({super.key});

  final List<LoanModel> loans = [
    LoanModel(loanAmount: '\$100,000', leftToRepay: '\$40,500', showRepay: true),
    LoanModel(
      loanAmount: '\$500,000',
      leftToRepay: '\$250,000',
      showRepay: true,
    ),
    LoanModel(
      loanAmount: '\$900,000',
      leftToRepay: '\$40,500',
      showRepay: true,
    ),
    LoanModel(loanAmount: '\$50,000', leftToRepay: '\$40,500', showRepay: true),
    LoanModel(loanAmount: '\$30,000', leftToRepay: '\$40,500', showRepay: true),
    LoanModel(loanAmount: '\$50,000', leftToRepay: '\$5,500', showRepay: true),
    LoanModel(
      loanAmount: '\$160,000',
      leftToRepay: '\$100,800',
      showRepay: true,
    ),
    LoanModel(
      loanAmount: '\$125,000',
      leftToRepay: '\$750,000',
      showRepay: false,
      isHighlighted: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Table Header
        LoansTableHeader(),
        Divider(height: 1, color: Color(0xFFE2E8F0), indent: 16, endIndent: 16),

        // Table Body
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: loans.asMap().entries.map((entry) {
              int index = entry.key;
              LoanModel loan = entry.value;
              bool isLast = index == loans.length - 1;

              return LoansTableRow(loan: loan, isLast: isLast);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
