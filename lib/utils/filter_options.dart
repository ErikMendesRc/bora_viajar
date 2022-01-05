import 'package:bora_viajar/utils/costants.dart';
import 'package:flutter/material.dart';

class FilterOptions extends StatelessWidget {
  final String text;

  const FilterOptions({ Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: COLOR_GREY.withAlpha(25)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 12),
      child: Text(text, style: themeData.textTheme.bodyText1),
    );
  }
}