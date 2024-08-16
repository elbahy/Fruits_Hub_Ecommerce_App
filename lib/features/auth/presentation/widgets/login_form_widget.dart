import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button_widget.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/custom_text_field.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextField(hintText: 'البريد الإلكتروني'),
          const CustomTextField(hintText: 'كلمة المرور', obscureText: true),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "نسيت كلمة المرور؟",
              style: AppStyles.semiBold16.copyWith(color: AppColors.textColor),
            ),
          ),
          const SizedBox(height: 40),
          CustomButton(onPressed: () {}, text: 'تسجيل دخول')
        ],
      ),
    );
  }
}
