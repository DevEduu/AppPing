import 'package:apping/const.dart';
import 'package:apping/pages/HomePage.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/logo.png'),
      backgroundColor: bgColorScafold,
      durationInSeconds: 2,
      showLoader: true,
      loaderColor: myGreen,
      navigator: HomePage(),
      loadingText: const Text(
        'Aguarde...',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
