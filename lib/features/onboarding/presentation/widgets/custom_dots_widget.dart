import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/data/onboarding_model.dart';

class CustomDotsWidget extends StatelessWidget {
  const CustomDotsWidget({
    super.key,
    required this.currentPage,
  });

  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          onBoardingList.length,
          (index) => AnimatedContainer(
                padding: const EdgeInsets.all(3),
                duration: const Duration(milliseconds: 700),
                child: CircleAvatar(
                  backgroundColor: index <= currentPage ? const Color(0xff205D39) : const Color(0xffB0DBAE),
                  radius: index <= currentPage ? 7 : 5,
                ),
              )),
    );
  }
}
