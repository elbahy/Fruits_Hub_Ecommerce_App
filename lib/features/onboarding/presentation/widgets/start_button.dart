import 'package:flutter/material.dart';
import 'package:fruits_hub/core/database/cache/cache_helper.dart';
import 'package:fruits_hub/core/router/app_routers.dart';
import 'package:fruits_hub/core/services/service_locator.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, AppRouters.login);
        getIt<CacheHelper>().saveData(key: "isVisited", value: true);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
        backgroundColor: const Color(0xff205D39),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      child: const Text(
        'ابدأ الان',
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
