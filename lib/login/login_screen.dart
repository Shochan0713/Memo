import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:memo_application/login/registration_screen.dart';

import '../class/various_widget.dart';
import '../main_screen.dart/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';
  String infoText = '';
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: commonDrawer(2, context),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                      'ログイン',
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
                            decoration: InputDecoration(labelText: 'メールアドレス'),
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
                            child: const Text('ログイン'),
                            onPressed: () async {
                              try {
                                final User? user = (await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: _email, password: _password))
                                    .user;
                                if (user != null)
                                  print("ログインしました ${user.email}, ${user.uid}");
                                await Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) {
                                    return HomePage();
                                  }),
                                );
                              } catch (e) {
                                setState(() {
                                  infoText = "登録に失敗しました";
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => RegistrationPage()),
                  ),
                );
              },
              child: Text('登録ページ'),
            )
          ],
        ),
      ),
    );
  }
}
