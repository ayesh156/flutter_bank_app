import 'package:flutter/material.dart';

import '../components/service_card.dart';

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
            ServiceCard(
            icon: Icons.security,
            iconColor: Color(0xFF1E3A8A),
            title: 'Unlimited protection',
            subtitile: 'Life Insurance',
          ),
          ServiceCard(
            icon: Icons.lock,
            iconColor: Color(0xFF1E3A8A),
            title: 'Buy products',
            subtitile: 'Shops',
          ),
        ],
      ),
    );
  }
}
