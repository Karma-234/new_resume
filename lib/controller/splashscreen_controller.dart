import 'package:get/get.dart';
import 'package:my_resume/view/homepage/home_page.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool? animate = false.obs;
  RxBool? colorChange = false.obs;
  RxBool? colorChange1 = false.obs;
  RxBool? colorChange2 = false.obs;

  Future startAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    animate!.value = true;
    await Future.delayed(
      const Duration(milliseconds: 1500),
    );
    colorChange!.value = true;
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    colorChange1!.value = true;
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    colorChange2!.value = true;
    await Future.delayed(
      const Duration(milliseconds: 800),
    );

    Get.off(() => const HomePage());
  }
}
