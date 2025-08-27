import 'package:flutter/material.dart';

class IconButtonComponent extends StatefulWidget {
  final VoidCallback onPressed;
  final Color color;
  final IconData iconData;
  final Color hoverColor;

  const IconButtonComponent({
    super.key,
    required this.onPressed,
    required this.color,
    required this.iconData,
    required this.hoverColor,
  });

  @override
  State<IconButtonComponent> createState() => _IconButtonComponentState();
}

class _IconButtonComponentState extends State<IconButtonComponent> {
  bool _isPressed = false;
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.onPressed();
          setState(() {
            _isPressed = true;
          });
          Future.delayed(const Duration(milliseconds: 100), () {
            if (mounted) {
              // Verificar que el widget sigue montado
              setState(() {
                _isPressed = false;
              });
            }
          });
        },
        onHover: (hovering) {
          setState(() {
            _isHovered = hovering;
          });
        },
        borderRadius: BorderRadius.circular(
          24,
        ), // Radio más grande para forma redonda
        splashColor: widget.hoverColor.withOpacity(0.3), // Color del splash
        hoverColor: widget.hoverColor.withOpacity(0.1), // Color del hover
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            widget.iconData,
            color: _isHovered || _isPressed ? widget.hoverColor : widget.color,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
