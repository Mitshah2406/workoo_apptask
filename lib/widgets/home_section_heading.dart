import 'package:flutter/material.dart';

class HomeSectionHeading extends StatelessWidget {
  const HomeSectionHeading(
      {super.key,
      required this.text,
      required this.infoText,
      required this.onInfoBtnClick});
  final String text;
  final String infoText;
  final void Function() onInfoBtnClick;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        TextButton(
          onPressed: onInfoBtnClick,
          child: Text(infoText),
        )
      ],
    );
  }
}
