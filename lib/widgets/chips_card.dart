import 'package:flutter/material.dart';

class ChipsCard extends StatelessWidget {
  const ChipsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xff6750A4),
        ),
      ),
      child: const Text(
        "Dustroof AC Cover",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xff6750A4),
        ),
      ),
    );
  }
}
