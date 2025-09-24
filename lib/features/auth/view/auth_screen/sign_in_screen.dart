import 'package:auth_screen_project/features/auth/core/app_images.dart';
import 'package:auth_screen_project/features/auth/view/auth_screen/widgets/account_widget.dart';
import 'package:auth_screen_project/features/auth/view/auth_screen/widgets/checkbox_widget.dart';
import 'package:auth_screen_project/features/auth/view/auth_screen/widgets/elevated_button_widget.dart';
import 'package:auth_screen_project/features/auth/view/auth_screen/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Вход',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ],
                ),
              ),
              TextFieldWidget(
                labelText: 'E-mail',
                icon: Icon(
                  Icons.person,
                ),
              ),
              SizedBox(height: 25),
              TextFieldWidget(
                labelText: 'Пароль',
                icon: Icon(
                  Icons.remove_red_eye_rounded,
                ),
              ),
              SizedBox(height: 20),
              CheckboxWidget(
                text: 'Запомнить меня',
                ),
                SizedBox(height: 20),
              ElevatedButtonWidget(
                text: 'Войти', 
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Divider(
                height: 3,
                color: Colors.black,
              ),
              SizedBox(height: 10),
              Text(
                'Забыли Пароль?',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                ),
              SizedBox(height: 20),
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