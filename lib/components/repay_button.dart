import 'package:flutter/material.dart';

class RepayButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const RepayButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        minimumSize: const Size(0, 28),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Color(0xFF1E3A8A), width: 1),
        ),
      ),
      onPressed: onPressed ?? () {},
      child: const Text(
        'Repay',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Color(0xFF1E3A8A),
        ),
      ),
    );
  }
}
