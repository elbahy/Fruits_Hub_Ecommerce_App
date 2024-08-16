import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_hub/core/database/cache/cache_helper.dart';
import 'package:fruits_hub/core/router/app_routers.dart';
import 'package:fruits_hub/core/router/rotuting.dart';
import 'package:fruits_hub/core/services/service_locator.dart';
import 'package:fruits_hub/core/theme/app_themedata.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/generated/l10n.dart';

void main() async {
  runApp(const FruitsHubApp());
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
}

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      title: 'Fruits Hub',
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppRouters.splash,
      theme: themeData,
    );
  }
}
