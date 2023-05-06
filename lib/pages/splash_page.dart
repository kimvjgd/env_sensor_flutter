import 'package:env_sensor/setting_store.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

class SplashPage extends StatefulWidget {
  final SettingStore store;
  SplashPage({Key? key, required this.store}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // LocalNotificationRepository.requestPermission();
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(store: widget.store,),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlutterLogo(
                size: 100,
              ),
              Text("env flutter splash"),
            ],
          ),
        ),
      ),
    );
  }
}

// 상상제작소 이미지 슈슈슝~
