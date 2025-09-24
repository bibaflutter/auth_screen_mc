import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  final String text;
  const CheckboxWidget({super.key, required this.text});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool rememberMe = false; // локальное состояние

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: rememberMe,
          activeColor: const Color(0XFF985EFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          onChanged: (value) {
            setState(() {
              rememberMe = value ?? false;
            });
          },
        ),
        Text(
          widget.text, // <-- теперь текст отображается в UI
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
