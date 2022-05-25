import 'package:flutter/material.dart';
import 'package:visit_app/extensions/text_theme_x.dart';

import '../../models/place.dart';

class GradientStatusTag extends StatelessWidget {
  const GradientStatusTag({Key? key, required this.statusTag})
      : super(key: key);

  final StatusTag statusTag;

  @override
  Widget build(BuildContext context) {
    String text;
    List<Color> colors;
    switch (statusTag) {
      case StatusTag.popular:
        text = 'Mashhur joylar';
        colors = [Colors.amber, Colors.orange.shade600];
        break;
      case StatusTag.event:
        text = 'Haqida';
        colors = [Colors.cyan, Colors.blue.shade600];
        break;
    }
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
        colors: colors,
      )),
      child: Text(
          text,
          style: context.subtitle1.copyWith(color: Colors.white)),
    );
  }
}
