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
  final double width;
  final double height;

  const CodeTileComponent({
    super.key,
    required this.iconData,
    required this.name,
    required this.showBadge,
    required this.onPressed,
    required this.description,
    required this.code,
    this.width = 800,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return InteractiveCardComponent(
      gradient: EvaColors.magiGradient,
      hoverGradient: EvaColors.headerGradient,
      onPressed: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 8.0),
            Icon(iconData),
            const SizedBox(width: 8.0),
            Expanded(
              child: TitleDescriptorAndCode(
                title: name,
                description: description,
                code: code,
              ),
            ),
            const SizedBox(width: 8.0),
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: showBadge ? Colors.red : Colors.grey,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                showBadge ? 'SUDO' : 'USER',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
          ],
        ),
      ),
    );
  }
}

class TitleDescriptorAndCode extends StatelessWidget {
  final String title;
  final String description;
  final String code;
  final double height;

  const TitleDescriptorAndCode({
    super.key,
    required this.title,
    required this.description,
    required this.code,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(left: 8.0),
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            selectionColor: Colors.blueAccent,
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8.0),
          Text(description, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8.0),
          CodeBoxComponent(code: code),
        ],
      ),
    );
  }
}
