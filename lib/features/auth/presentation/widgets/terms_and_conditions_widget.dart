import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(15, 0),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.3,
            child: Checkbox(
              value: true,
              onChanged: (value) {},
              activeColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: AppColors.grey, width: 1)),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 32 - 48,
            child: Text.rich(TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: AppStyles.semiBold14.copyWith(color: AppColors.grey),
                ),
                TextSpan(
                    text: 'الشروط والأحكام الخاصة بنا',
                    style: AppStyles.semiBold14
                        .copyWith(color: AppColors.textColor)),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
