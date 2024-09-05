import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

String removeNewLine(String data) {
  return data.replaceAll('\n', '');
}

MouseRegion buildHoverButton(
  BuildContext context, {
  required String label,
  required Function()? onTap,
  bool isHovered = false,
  Function(PointerEnterEvent)? onEnter,
  Function(PointerExitEvent)? onExit,
}) {
  return MouseRegion(
    onEnter: onEnter,
    onExit: onExit,
    child: AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 200),
      style: TextStyle(
        color: Colors.black,
        fontSize: isHovered ? 18 : 16,
        fontWeight: FontWeight.w600,
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(label,
            style: TextStyle(
              color: isHovered ? Colors.red : Colors.black,
              fontSize: isHovered ? 20 : 16,
              fontWeight: FontWeight.w600,
            )),
      ),
    ),
  );
}
