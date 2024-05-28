import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Stack(children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  Assets.assetsImagesOnboarding1Bg,
                  fit: BoxFit.fill,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.xor,
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    ));
  }
}
