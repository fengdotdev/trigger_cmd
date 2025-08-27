import 'package:flutter/material.dart';

class CommandText extends StatelessWidget {
  final String command;
  final bool isHovered;

  const CommandText({
    super.key,
    required this.command,
    required this.isHovered,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF7FAFC),
        borderRadius: BorderRadius.circular(6),
        border: Border(
          left: BorderSide(
            color: isHovered
                ? Theme.of(context).primaryColor
                : const Color(0xFF667EEA),
            width: 3,
          ),
        ),
      ),
      child: Text(
        '\$ $command',
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 13,
          color: isHovered
              ? Theme.of(context).primaryColor
              : const Color(0xFF2D3748),
          height: 1.6,
        ),
      ),
    );
  }
}
