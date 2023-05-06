import 'package:env_sensor/pages/setting_page.dart';
import 'package:env_sensor/setting_store.dart';
import 'package:flutter/material.dart';

import '../widget/main_tile.dart';

class MainPage extends StatelessWidget {
  final SettingStore store;

  const MainPage({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("미녕쿤의 메인화면"),
          actions: [
            IconButton(
              icon: const Icon(Icons.contrast),
              onPressed: () {
                store.switchTheme();
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SettingPage(store: store,),
                  ),
                );
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text('32.4도'),
                ),
                Container(
                  child: Text('46.8%'),
                ),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 7, // 가로 칸 수
                childAspectRatio: 0.9, // 가로/세로 비율
                children: List.generate(
                    14, // 총 그리드뷰 아이템 수 (7 x 2)
                    (index) => MainTile()),
              ),
            )
          ],
        ));
  }
}

/*

보냈던 UI 페이지처럼
센서 16개를 한번에 볼 수 있게

*/
