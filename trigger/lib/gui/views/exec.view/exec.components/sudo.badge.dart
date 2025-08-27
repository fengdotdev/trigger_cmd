import 'package:flutter/material.dart';
import 'package:trigger/gui/theming/eva/eva.dark.dart';

class SudoBadge extends StatelessWidget {
  const SudoBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        gradient: EvaColorsDark.lclGradient,
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Text(
        'SUDO',
        style: TextStyle(
          color: EvaColorsDark.lclBright,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
