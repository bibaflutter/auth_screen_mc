import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key, 
    required this.labelText, this.icon, 
  });

  final String labelText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Color(0XFF000000).withOpacity(0.25), // цвет тени
        blurRadius: 4,  // размытие
        // offset: Offset(), // смещение по x и y
      ),
    ],
  ),
  child: TextField(
    decoration: InputDecoration(
      suffixIcon: icon,
      suffixStyle: TextStyle(
        color: Color(0XFF403A4B),
      ),
      hintText: labelText,
      border: OutlineInputBorder(
        borderSide: BorderSide.none, // убираем стандартную рамку
        borderRadius: BorderRadius.circular(12),
      ),
      filled: true,
      fillColor: Color(0XFFF8F1FF),
    ),
  ),
);

  }
}
