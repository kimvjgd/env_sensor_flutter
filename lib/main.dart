import 'package:env_sensor/pages/main_page.dart';
import 'package:env_sensor/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}


// 무조건 가로모드
//
// 민쿤.......
// 동현이
// 로컬
// 노
// 티
// 피
// 케
// 이
// 션
//
// 있
// 으
// 면
//
// 정
// 말
//
// 좋
// 을
//
// 것
//
// 같
// 아
// 요
// .
