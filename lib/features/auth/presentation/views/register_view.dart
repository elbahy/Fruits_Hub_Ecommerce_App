import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/register_form_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حساب جديد'),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              RegisterFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
