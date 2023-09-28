import 'package:flutter/material.dart';

class DotCarrusel extends StatefulWidget {
  final bool isPressed;
  final GestureTapCallback onTap;
  const DotCarrusel({super.key, required this.isPressed, required this.onTap});

  @override
  State<DotCarrusel> createState() => _DotCarruselState();
}

class _DotCarruselState extends State<DotCarrusel> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          curve: Curves.ease,
          width: widget.isPressed ? 16 : 8,
          height: 8,
          decoration: BoxDecoration(
              color: widget.isPressed ? Colors.white : Colors.white70,
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(10))),
        ));
  }
}
