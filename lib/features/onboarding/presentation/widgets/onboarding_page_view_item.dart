import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/features/onboarding/data/onboarding_model.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required this.onBoardingModel,
  });

  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  Assets.assetsImagesOnboarding1Bg,
                  colorFilter: ColorFilter.mode(Color(onBoardingModel.color), BlendMode.srcIn),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  onBoardingModel.image,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold, fontSize: 24), children: onBoardingModel.title),
        ),
        const SizedBox(height: 30),
        Text(
          onBoardingModel.description,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 19, color: Color(0xff4E5556)),
        )
      ],
    );
  }
}
