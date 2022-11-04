import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/controller/splashscreen_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splash = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splash.startAnimation();
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splash.animate!.value ? 40.0 : 0,
              left: splash.animate!.value ? 20.0 : 0,
              child: CircleAvatar(
                backgroundColor: Colors.pink,
                radius: splash.animate!.value ? 40.0 : 0,
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splash.animate!.value ? 45.0 : 0,
              left: splash.animate!.value ? 105.0 : 0,
              child: const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 35.0,
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splash.animate!.value ? 50.0 : 0,
              left: splash.animate!.value ? 180.0 : 0,
              child: const CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 30.0,
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: mWidth > 480 || mHeight > 680 ? 140.0 : 220.0,
              left: mWidth > 480
                  ? 110.0
                  : mWidth < 410
                      ? 10.0
                      : 60.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi',
                    style: GoogleFonts.akayaKanadaka(
                      fontSize: 30.0,
                      color: Colors.blue
                          .withOpacity(splash.colorChange!.value ? 1 : 0),
                    ),
                  ),
                  Text(
                    'Welcome to',
                    style: GoogleFonts.akayaKanadaka(
                      fontSize: 40.0,
                      color: Colors.blue
                          .withOpacity(splash.colorChange1!.value ? 1 : 0),
                    ),
                  ),
                  Text(
                    'My Resume app',
                    style: GoogleFonts.akayaKanadaka(
                      fontSize: 50.0,
                      color: Colors.blue
                          .withOpacity(splash.colorChange2!.value ? 1 : 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splash.animate!.value ? 40.0 : 0,
              right: 30.0,
              child: const CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 40.0,
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splash.animate!.value ? 45.0 : 0,
              right: 120.0,
              child: CircleAvatar(
                backgroundColor:
                    splash.colorChange!.value ? Colors.blue : Colors.pink,
                radius: 35.0,
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: 50.0,
              right: splash.animate!.value ? 205.0 : -205.0,
              child: CircleAvatar(
                backgroundColor:
                    splash.colorChange!.value ? Colors.pink : Colors.blue,
                radius: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
