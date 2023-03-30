import 'package:apping/pages/History.dart';
import 'package:apping/pages/HomePage.dart';
import 'package:apping/pages/Setting.dart';
import 'package:apping/pages/SplashPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/history': (context) => const History(),
        '/home': (context) => HomePage(),
        '/setting': (context) => const Setting(),
      },
    );
  }
}
