import 'package:cooking_app/src/commons/app_colors.dart';
import 'package:cooking_app/src/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hinddenText = true;
  double lengthText = 250.0;
  @override
  void initState() {
    if (widget.text.length > lengthText) {
      firstHalf = widget.text.substring(0, lengthText.toInt());
      secondHalf =
          widget.text.substring(lengthText.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf, heiht: 1.5, color: AppColors.paraColor)
          : Column(
              children: [
                SmallText(
                  text: hinddenText
                      ? (firstHalf + '...')
                      : (firstHalf + secondHalf),
                  heiht: 1.5,
                  color: AppColors.paraColor,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      hinddenText = !hinddenText;
                    });
                  },
                  child: Row(
                    children: [
                      const SmallText(
                          text: 'Show more', color: AppColors.mainColor),
                      Icon(
                          hinddenText
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: AppColors.mainColor)
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
