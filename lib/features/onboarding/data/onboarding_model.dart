import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';

class OnBoardingModel {
  final int color;
  final List<TextSpan> title;
  final String description;
  final String image;
  OnBoardingModel({
    required this.color,
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    color: 0xfffdf4e3,
    title: [
      const TextSpan(
        text: 'مرحبا بك في ',
      ),
      const TextSpan(text: 'FRUITS', style: TextStyle(color: Color(0xff205D39))),
      const TextSpan(text: 'HUB', style: TextStyle(color: Color(0xffF2A934))),
    ],
    description: 'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
    image: Assets.assetsImagesOnboarding1Img,
  ),
  OnBoardingModel(
    color: 0xffCAEFD9,
    title: [const TextSpan(text: 'ابحث وتسوق')],
    description: 'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
    image: Assets.assetsImagesOnboarding2Img,
  ),
  OnBoardingModel(
    color: 0xffffe4e1,
    title: [const TextSpan(text: 'استمتع بخدمة التوصيل ')],
    description: 'تسوق بسهولة واحصل على فواكهك الطازجة مباشرة إلى باب منزلك. نحن نقدم خدمة توصيل سريعة وآمنة لضمان وصول فواكهك بحالة ممتازة.',
    image: Assets.assetsImagesOnboarding3Img,
  ),
];
