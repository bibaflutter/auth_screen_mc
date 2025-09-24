import 'package:auth_screen_project/features/auth/view/auth_screen/auth_screen.dart';
import 'package:auth_screen_project/features/auth/view/auth_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  }
}