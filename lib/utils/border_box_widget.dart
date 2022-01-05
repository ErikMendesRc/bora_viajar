import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {

  final Widget child;
  final EdgeInsets? padding;
  final double? height, width;
  const BorderBox({ Key? key, required this.child, this.padding, this.height, this.width }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.withAlpha(40),width: 2)
      ),
      padding: padding?? const EdgeInsets.all(8.0),
      child: Center(child: child),
      
    );
  }
}