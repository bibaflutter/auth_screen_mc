import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
   ElevatedButtonWidget({
    super.key, required this.text, required this.onPressed,
  });

  final String text;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF985ACE),
        ),
        onPressed:  onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
    );
  }
}
