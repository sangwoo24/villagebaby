import 'package:flutter/material.dart';

class CountingButton extends StatelessWidget {
  const CountingButton({
    super.key,
    this.icon,
    required this.onPressed,
  });

  final Icon? icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFEFEFEF), width: 2),
      ),
      child: icon,
    );
  }
}
