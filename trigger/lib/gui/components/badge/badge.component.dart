import 'package:flutter/material.dart';

class BadgeComponent extends StatefulWidget {
  final String label;
  const BadgeComponent({super.key, required this.label});

  @override
  State<BadgeComponent> createState() => _BadgeComponentState();
}

class _BadgeComponentState extends State<BadgeComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
      child: Text(
        widget.label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
