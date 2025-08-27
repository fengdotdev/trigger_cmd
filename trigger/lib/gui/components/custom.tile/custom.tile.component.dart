import 'package:flutter/material.dart';

class InteractiveCardComponent extends StatefulWidget {
  final LinearGradient gradient;
  final LinearGradient hoverGradient;
  final VoidCallback onPressed;
  final Widget child;

  const InteractiveCardComponent({
    super.key,
    required this.gradient,
    required this.hoverGradient,
    required this.onPressed,
    required this.child,
  });

  @override
  State<InteractiveCardComponent> createState() =>
      _InteractiveCardComponentState();
}

class _InteractiveCardComponentState extends State<InteractiveCardComponent> {
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

        child: Container(
          decoration: BoxDecoration(
            gradient: _isHovered || _isPressed
                ? widget.hoverGradient
                : widget.gradient,
            borderRadius: BorderRadius.circular(12),
            boxShadow: _isHovered || _isPressed
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : [],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
