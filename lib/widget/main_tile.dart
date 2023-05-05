import 'package:flutter/material.dart';

class MainTile extends StatelessWidget {
  const MainTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        //color: Colors.pinkAccent
      ),
      child: Column(
        children: [
          Icon(
            Icons.icecream,
            size: 40,
          ),
          Text("327",style: TextStyle(fontSize: 20),),
          Text("단위단위"),
          Text("CO")
        ],
      ),
    );
  }
}
