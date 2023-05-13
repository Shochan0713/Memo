import 'package:flutter/material.dart';
import 'package:memo_application/login/login_screen.dart';
import 'package:memo_application/main_screen.dart/home_screen.dart';

import '../class/various_widget.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: commonDrawer(2),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        color: Colors.lightBlue[100],
                        width: 400,
                        height: 50,
                        child: const Text(
                          'ユーザー登録',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        color: Colors.grey[200],
                        width: 400,
                        height: 250,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'ログインID',
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'パスワード',
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                              height: 20,
                            ),
                            SizedBox(
                              width: 370,
                              height: 40,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.lightBlue[100]),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                HomePage())));
                                  },
                                  child: const Text('ログイン')),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Text('RegistrationPage'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => LoginPage())));
                },
                child: const Text('ログインページ'))
          ],
        ),
      ),
    );
  }
}
