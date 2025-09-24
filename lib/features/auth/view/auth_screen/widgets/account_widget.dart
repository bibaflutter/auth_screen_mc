import 'package:flutter/material.dart';

class AccountButtonWidget extends StatelessWidget {
  const AccountButtonWidget({
    super.key, required this.text, required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFFFFFFFF),
          side: BorderSide(width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              // Image.asset(AppImages.googleImage, height: 30, width: 30),
              Image.asset(image),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
