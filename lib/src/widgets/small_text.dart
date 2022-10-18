import 'package:flutter/material.dart';

import '../commons/app_colors.dart';

class SmallText extends StatefulWidget {
  final Color? color;
  final String text;
  final double? size;
  final double? heiht;
  const SmallText({
    Key? key,
    required this.text,
    this.color,
    this.heiht,
    this.size,
  }) : super(key: key);

  @override
  State<SmallText> createState() => _SmallTextState();
}

class _SmallTextState extends State<SmallText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: widget.size ?? 12,
          height: widget.heiht ?? 1.2,
          color: widget.color ?? AppColors.textColor),
    );
  }
}
