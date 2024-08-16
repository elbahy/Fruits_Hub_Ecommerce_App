import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.grey)),
        SizedBox(
            width: 50,
            child: Center(
                child: Text('أو',
                    style: AppStyles.semiBold16
                        .copyWith(color: AppColors.blackColor)))),
        const Expanded(child: Divider(color: AppColors.grey)),
      ],
    );
  }
}
