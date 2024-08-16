import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class CreateAccountTextWidget extends StatelessWidget {
  const CreateAccountTextWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.screen,
  });
  final String text1;
  final String text2;
  final String screen;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(screen);
      },
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text: text1,
                style: AppStyles.semiBold18.copyWith(color: Colors.grey)),
            TextSpan(
                text: text2,
                style: AppStyles.semiBold18
                    .copyWith(color: AppColors.primaryColor)),
          ],
        ),
      ),
    );
  }
}
