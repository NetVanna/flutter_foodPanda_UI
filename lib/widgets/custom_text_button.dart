import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.isDisable});

  final String text;
  final VoidCallback onPressed;
  final bool isDisable;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisable ? null : onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: isDisable ? Colors.grey[400] : Color(0xFFE21A70),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
