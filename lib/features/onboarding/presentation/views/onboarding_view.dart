import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/data/onboarding_model.dart';
import 'package:fruits_hub/features/onboarding/presentation/widgets/onboarding_page_view_item.dart';

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
                      child: const Text('تخط'),
                      onTap: () => pageController.jumpTo(onBoardingList.length - 1),
                    ),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                      padding: const EdgeInsets.all(3),
                      duration: const Duration(milliseconds: 700),
                      child: CircleAvatar(
                        backgroundColor: index == currentPage ? const Color(0xff205D39) : const Color(0xffB0DBAE),
                        radius: index == currentPage ? 7 : 5,
                      ),
                    )),
          ),
          const SizedBox(height: 20),
          currentPage == onBoardingList.length - 1
              ? ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                    backgroundColor: const Color(0xff205D39),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: const Text(
                    'ابدأ الان',
                    style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Cairo', fontWeight: FontWeight.bold),
                  ),
                )
              : SizedBox(height: 50, width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: 50),
        ],
      ),
    ));
  }
}
