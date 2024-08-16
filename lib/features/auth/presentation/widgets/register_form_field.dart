import 'package:flutter/material.dart';
import 'package:fruits_hub/core/router/app_routers.dart';
import 'package:fruits_hub/core/widgets/custom_button_widget.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/create_account_text.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/terms_and_conditions_widget.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const CustomTextField(hintText: 'الإسم بالكامل'),
        const CustomTextField(hintText: 'البريد الإلكتروني'),
        const CustomTextField(hintText: 'كلمة المرور', obscureText: true),
        const TermsAndConditionsWidget(),
        const SizedBox(height: 30),
        CustomButton(onPressed: () {}, text: 'إنشاء حساب جديد'),
        const SizedBox(height: 25),
        const CreateAccountTextWidget(
          text1: 'تمتلك حساب بالفعل؟ ',
          text2: 'تسجيل دخول',
          screen: AppRouters.login,
        ),
      ],
    ));
  }
}
