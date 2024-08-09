import 'package:flutter/material.dart';

class CustomTextFiled extends StatefulWidget {
  CustomTextFiled({
    super.key,
    this.controller,
    required this.labelText,
    this.noIcon = true,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String labelText;
  final bool noIcon;
  final Function(String)? onChanged;

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  bool isObSecure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObSecure,
      controller: widget.controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          suffixIconColor: Color(0xFFE21A70),
          suffixIcon: widget.noIcon
              ? SizedBox()
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isObSecure = !isObSecure;
                    });
                  },
                  icon: isObSecure
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
          labelText: widget.labelText,
          contentPadding: EdgeInsets.all(20),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey[200]!)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey[200]!))),
    );
  }
}
