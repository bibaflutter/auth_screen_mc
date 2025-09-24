import 'package:auth_screen_project/features/auth/core/app_images.dart';
import 'package:auth_screen_project/features/auth/view/auth_screen/sign_in_screen.dart';
import 'package:auth_screen_project/features/auth/view/auth_screen/widgets/account_widget.dart';
import 'package:auth_screen_project/features/auth/view/auth_screen/widgets/elevated_button_widget.dart';
import 'package:auth_screen_project/features/auth/view/auth_screen/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Регистрация',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              TextFieldWidget(labelText: 'Имя'),
              SizedBox(height: 15),
              TextFieldWidget(labelText: 'Фамилия'),
              SizedBox(height: 15),
              TextFieldWidget(labelText: 'E-mail'),
              SizedBox(height: 15),
              TextFieldWidget(labelText: 'Пароль'),
              SizedBox(height: 15),
              TextFieldWidget(labelText: 'Подтвердите пароль'),
              SizedBox(height: 15),
              ElevatedButtonWidget(
                text: 'Регистрация',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
              ),
              SizedBox(height: 10),
              Divider(height: 10, color: Colors.black.withOpacity(0.8)),
              SizedBox(height: 10),
              AccountButtonWidget(
                text: 'Продолжить с Google',
                image: AppImages.googleImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
