import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:memo_application/login/login_screen.dart';
import 'package:memo_application/main_screen.dart/home_screen.dart';

import '../class/various_widget.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String _email = '';
  String _password = '';
  String infoText = '';
  final auth = FirebaseAuth.instance;
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
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(labelText: 'メールアドレス'),
                                onChanged: (String value) {
                                  setState(() {
                                    _email = value;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextFormField(
                                decoration:
                                    const InputDecoration(labelText: 'パスワード'),
                                obscureText: true,
                                onChanged: (String value) {
                                  setState(() {
                                    _password = value;
                                  });
                                },
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
                                child: const Text('ユーザ登録'),
                                onPressed: () async {
                                  try {
                                    final User? user = (await FirebaseAuth
                                            .instance
                                            .createUserWithEmailAndPassword(
                                                email: _email,
                                                password: _password))
                                        .user;
                                    if (user != null)
                                      print(
                                          "ユーザー登録しました ${user.email} , ${user.uid}");
                                    await Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context) {
                                        return HomePage();
                                      }),
                                    );
                                  } catch (e) {
                                    setState(() {
                                      infoText = "登録に失敗しました:${e.toString()}";
                                    });
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        // メッセージ表示
                        child: Text(infoText),
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
