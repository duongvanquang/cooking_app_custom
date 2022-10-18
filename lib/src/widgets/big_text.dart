import 'package:flutter/material.dart';

class BigText extends StatefulWidget {
  final Color color;
  final String textTitle;
  final double size;
  const BigText(
      {Key? key,
      required this.color,
      required this.size,
      required this.textTitle})
      : super(key: key);

  @override
  State<BigText> createState() => _BigTextState();
}

class _BigTextState extends State<BigText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.textTitle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: widget.size,
          fontFamily: 'Roboto',
          color: widget.color,
          fontWeight: FontWeight.w400),
    );
  }
}
