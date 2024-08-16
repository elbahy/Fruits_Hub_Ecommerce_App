import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class SocialLoginButtonWidget extends StatelessWidget {
  const SocialLoginButtonWidget({
    super.key,
    required this.asset,
    required this.text,
  });
  final String asset;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width, 60),
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
            side: BorderSide(width: .5, color: AppColors.grey),
            borderRadius: BorderRadius.all(Radius.circular(16))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(asset),
          Expanded(
              child: Center(
                  child: Text(text,
                      style: AppStyles.semiBold18
                          .copyWith(color: AppColors.blackColor)))),
        ],
      ),
    );
  }
}
