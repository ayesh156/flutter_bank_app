import 'package:flutter/material.dart';

class RepayButton extends StatelessWidget {
  const RepayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xFF3B82F6).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'Repay',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Color(0xFF3B82F6),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
