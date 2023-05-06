import 'package:env_sensor/pages/main_page.dart';
import 'package:env_sensor/pages/splash_page.dart';
import 'package:env_sensor/setting_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// import 'firebase_options.dart';
import 'app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  final store = SettingStore();
  runApp(
    MyApp(
      store: store,
    ),
  );
}

class MyApp extends StatelessWidget {
  final SettingStore store;

  const MyApp({super.key, required this.store});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return Observer(
      builder:(_)=> MaterialApp(
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: store.currentMode,
        debugShowCheckedModeBanner: false,
        home: SplashPage(store: store,),
      ),
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
