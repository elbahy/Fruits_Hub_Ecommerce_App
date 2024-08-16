import 'package:flutter/material.dart';
import 'package:fruits_hub/core/router/app_routers.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/register_view.dart';
import 'package:fruits_hub/features/home/presentation/views/home_view.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRouters.splash:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case AppRouters.onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case AppRouters.login:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case AppRouters.home:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case AppRouters.register:
      return MaterialPageRoute(builder: (context) => const RegisterView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
