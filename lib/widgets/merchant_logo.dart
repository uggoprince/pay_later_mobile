import 'package:flutter/material.dart';

class MerchantLogo extends StatelessWidget {
  final String? text;
  final Color backgroundColor;
  final Color textColor;
  final double size;
  final Widget? customChild;
  final EdgeInsetsGeometry? padding;

  const MerchantLogo({
    super.key,
    this.text,
    required this.backgroundColor,
    required this.textColor,
    this.size = 64,
    this.customChild,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: customChild ??
            (text != null
                ? Padding(
                    padding: padding ?? const EdgeInsets.all(8),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        _formatText(text!),
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: size * 0.22,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                  )
                : null),
      ),
    );
  }

  String _formatText(String value) {
    // If more than one word, break into new lines
    final words = value.trim().split(RegExp(r'\s+'));
    if (words.length > 1) {
      return words.join('\n');
    }
    return value;
  }
}
