import 'package:flutter/material.dart';

class ThemeElevatedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget? child;
  final String? title;
  final Color? backgroundColor;
  final Color? strokeColor;
  final double? strokeWidth;
  final double borderRadius;

  const ThemeElevatedButton(
      {super.key,
      required this.onPressed,
      this.child,
      this.title,
      this.backgroundColor,
      this.strokeColor,
      this.strokeWidth,
      this.borderRadius = 20});

  @override
  State<ThemeElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<ThemeElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: widget.backgroundColor,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: widget.strokeColor ?? Colors.transparent,
                  width: widget.strokeWidth ?? 0),
              borderRadius: BorderRadius.circular(widget.borderRadius))),
      child: widget.child ?? Text(widget.title ?? ""),
    );
  }
}
