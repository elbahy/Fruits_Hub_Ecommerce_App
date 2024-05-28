import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/router/app_routers.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRouters.onBoarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(Assets.assetsImagesSplashTop),
            ),
            Center(child: SvgPicture.asset(Assets.assetsImagesAppLogo)),
            SvgPicture.asset(Assets.assetsImagesSplashBottom),
          ],
        ),
      ),
    );
  }
}
