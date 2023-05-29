import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../class/various_widget.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: commonDrawer(1, context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'myapge',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
