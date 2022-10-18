import 'package:cooking_app/src/commons/app_colors.dart';
import 'package:cooking_app/src/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AddIconWidget extends StatefulWidget {
  final IconData icon;
  final String text;
  final Color? color;
  final Color iconColor;
  final double? sizeBox;
  const AddIconWidget(
      {Key? key,
      this.color,
      required this.icon,
      required this.iconColor,
      required this.text,
      this.sizeBox})
      : super(key: key);

  @override
  State<AddIconWidget> createState() => _AddIconWidgetState();
}

class _AddIconWidgetState extends State<AddIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.icon, color: widget.iconColor),
        SizedBox(width: widget.sizeBox ?? 5),
        SmallText(
          text: widget.text,
          color: widget.color ?? AppColors.textColor,
        )
      ],
    );
  }
}
