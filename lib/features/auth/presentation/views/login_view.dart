import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/create_account_text.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/login_form_widget.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/soical_login_section.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تسجيل دخول'),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 15),
              LoginFormWidget(),
              SizedBox(height: 35),
              CreateAccountTextWidget(),
              SizedBox(height: 35),
              SocialLoginSection()
            ],
          ),
        ),
      ),
    );
  }
}
