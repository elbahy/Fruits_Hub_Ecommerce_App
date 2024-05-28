import 'package:flutter/material.dart';
import 'package:fruits_hub/core/router/app_routers.dart';
import 'package:fruits_hub/core/router/rotuting.dart';

void main() {
  runApp(const FruitsHubApp());
}

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruits Hub',
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppRouters.splash,
    );
  }
}
