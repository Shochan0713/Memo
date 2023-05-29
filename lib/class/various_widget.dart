import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memo_application/login/login_screen.dart';
import 'package:memo_application/login/registration_screen.dart';
import 'package:memo_application/main_screen.dart/mypage_screen.dart';
import 'package:path/path.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    title: const Text('MEMO APP'),
    centerTitle: true,
  );
}

Widget commonDrawer(int X, BuildContext context) {
  return Drawer(child: drawerPage(X, context));
}

ListView drawerPage(X, BuildContext context) {
  if (X == 1) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('ログイン中'),
        ),
        ListTile(
          title: Text('マイページ'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) {
                  return Mypage();
                }),
              ),
            );
          },
        ),
        ListTile(
          title: Text('ログアウト'),
          onLongPress: () async {
            await FirebaseAuth.instance.signOut();
            await Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) {
                return LoginPage();
              }),
            );
          },
        )
      ],
    );
  } else {
    return ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('未ログイン中'),
        ),
        ListTile(
          title: Text('ユーザー登録画面'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) {
                  return RegistrationPage();
                }),
              ),
            );
          },
        ),
        ListTile(
          title: Text('ログイン画面'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) {
                  return LoginPage();
                }),
              ),
            );
          },
        )
      ],
    );
  }
}

void navigatorFunction(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: ((BuildContext context) => const Mypage()),
    ),
  );
}
