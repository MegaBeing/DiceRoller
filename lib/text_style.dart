import "package:flutter/material.dart";

class TxtStyle extends StatelessWidget {
  final String text;
  final double fontsize;
  const TxtStyle(this.text, this.fontsize, {super.key});
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xFFFCFCFC),
        fontSize: fontsize,
      ),
    );
  }
}
