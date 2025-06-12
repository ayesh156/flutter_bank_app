import 'package:flutter/material.dart';

import '../components/summary_card.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: PageView(
        controller: PageController(viewportFraction: 0.8),
        padEnds: false,
        children: [
            LoanSummaryCard(
            icon: Icons.person,
            iconColor: Color(0xFF1E3A8A),
            title: 'Personal Loans',
            amount: '\$50,000',
          ),
          LoanSummaryCard(
            icon: Icons.next_week,
            iconColor: Color(0xFF1E3A8A),
            title: 'Corporate Loans',
            amount: '\$100,000',
          ),
        ],
      ),
    );
  }
}
