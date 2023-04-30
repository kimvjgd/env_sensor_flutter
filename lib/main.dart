import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
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
