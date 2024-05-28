import 'package:flutter/material.dart';
import 'package:fruits_hub/core/router/app_routers.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRouters.splash:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case AppRouters.onBoarding:
      {
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      }

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
