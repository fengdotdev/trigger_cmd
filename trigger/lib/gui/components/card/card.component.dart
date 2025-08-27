import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final bool backgroundTransparency;
  final Widget? child;
  final Function()? onTap;

  const CardComponent({
    super.key,
    this.backgroundTransparency = false,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Material(
          //olor: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Padding(padding: const EdgeInsets.all(16.0), child: child),
          ),
        ),
      ),
    );
  }
}
