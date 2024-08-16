import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/custom_divider_widget.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/social_login_button_widget.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomDividerWidget(),
        SizedBox(height: 35),
        SocialLoginButtonWidget(
          asset: Assets.assetsImagesGoogleIcon,
          text: 'تسجيل بواسطة جوجل',
        ),
        SizedBox(height: 16),
        SocialLoginButtonWidget(
          asset: Assets.assetsImagesAppleIcon,
          text: 'تسجيل بواسطة أبل',
        ),
        SizedBox(height: 16),
        SocialLoginButtonWidget(
          asset: Assets.assetsImagesFacebookIcon,
          text: 'تسجيل بواسطة فيسبوك',
        ),
      ],
    );
  }
}
