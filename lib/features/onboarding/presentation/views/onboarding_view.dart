import 'package:flutter/material.dart';
import 'package:fruits_hub/core/database/cache/cache_helper.dart';
import 'package:fruits_hub/core/services/service_locator.dart';
import 'package:fruits_hub/features/onboarding/data/onboarding_model.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/custom_dots_widget.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/onboarding_page_view_item.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/start_button.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

int currentPage = 0;

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Stack(children: [
              PageView.builder(
                  controller: pageController,
                  itemCount: onBoardingList.length,
                  itemBuilder: (context, index) {
                    return OnBoardingPageViewItem(
                      onBoardingModel: onBoardingList[index],
                    );
                  },
                  onPageChanged: (value) => setState(() {
                        currentPage = value;
                      })),
              currentPage == onBoardingList.length - 1
                  ? const SizedBox()
                  : GestureDetector(
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'تخطي',
                          style:
                              TextStyle(color: Color(0xff205D39), fontSize: 16),
                        ),
                      ),
                      onTap: () {
                        pageController.animateToPage(
                          onBoardingList.length - 1,
                          duration: const Duration(milliseconds: 700),
                          curve: Curves.easeIn,
                        );
                        getIt<CacheHelper>()
                            .saveData(key: "isVisited", value: true);
                      }),
            ]),
          ),
          CustomDotsWidget(currentPage: currentPage),
          const SizedBox(height: 20),
          currentPage == onBoardingList.length - 1
              ? const StartButton()
              : SizedBox(
                  height: 50, width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: 50),
        ],
      ),
    ));
  }
}
