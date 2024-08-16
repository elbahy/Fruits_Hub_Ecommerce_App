import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class CreateAccountTextWidget extends StatelessWidget {
  const CreateAccountTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text: "لا تمتلك حساب؟ ",
                style: AppStyles.semiBold18.copyWith(color: Colors.grey)),
            TextSpan(
                text: "قم بإنشاء حساب",
                style: AppStyles.semiBold18
                    .copyWith(color: AppColors.primaryColor)),
          ],
        ),
      ),
    );
  }
}
