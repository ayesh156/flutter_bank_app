import 'package:flutter/material.dart';
import 'loans_table.dart';

class ActiveLoansSection extends StatelessWidget {
  const ActiveLoansSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        Text(
          'Active Loans Overview',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16),

        // Loans Table
        LoansTable(),
      ],
    );
  }
}