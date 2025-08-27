import 'package:flutter/material.dart';
import 'package:trigger/gui/components/codebox/codebox.component.dart';
import 'package:trigger/gui/components/custom.tile/custom.tile.component.dart';
import 'package:trigger/gui/primitives/colors.dart';

class CodeTileComponent extends StatelessWidget {
  final IconData iconData;
  final String name;
  final bool showBadge;
  final VoidCallback onPressed;
  final String description;
  final String code;

  const CodeTileComponent({
    super.key,
    required this.iconData,
    required this.name,
    required this.showBadge,
    required this.onPressed,
    required this.description,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return InteractiveCardComponent(
      gradient: EvaColors.magiGradient,
      hoverGradient: EvaColors.headerGradient,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(iconData),
            const SizedBox(width: 8.0),
            _TitleDescriptorAndCode(
              title: name,
              description: description,
              code: code,
            ),
            if (showBadge) const Icon(Icons.security),
          ],
        ),
      ),
    );
  }
}

class _TitleDescriptorAndCode extends StatelessWidget {
  final String title;
  final String description;
  final String code;

  const _TitleDescriptorAndCode({
    super.key,
    required this.title,
    required this.description,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 4.0),
        Text(description, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 4.0),
        CodeBoxComponent(code: code),
      ],
    );
  }
}
