import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:rooda_apps/pages/auth/login_page.dart';
import 'package:rooda_apps/pages/auth/signup_page.dart';
import 'package:rooda_apps/pages/home_page.dart';
import 'package:rooda_apps/pages/onboarding_page.dart';
import 'package:rooda_apps/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: [
          GetPage(
            name: '/',
            page: () => const HomePage(),
          ),
          GetPage(
            name: '/onboardingPage',
            page: () => const OnboardingPage(),
          ),
          GetPage(
            name: '/loginPage',
            page: () => const LoginPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
          GetPage(
            name: '/signupPage',
            page: () => const SignupPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(
              milliseconds: 800,
            ),
          ),
        ],
      ),
    );
  }
}
