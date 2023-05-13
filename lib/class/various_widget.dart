import 'package:flutter/material.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    title: const Text('MEMO APP'),
    centerTitle: true,
  );
}

Widget commonDrawer(int X) {
  return Drawer(child: drawerPage(X));
}

ListView drawerPage(X) {
  if (X == 1) {
    return ListView(
      children: [
        DrawerHeader(
          child: Text('HomePage'),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        DrawerHeader(
          child: Text('LogOut'),
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ],
    );
  } else {
    return ListView(
      children: [
        DrawerHeader(
          child: Text('LoginPage'),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        DrawerHeader(
          child: Text('RagisterPage'),
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ],
    );
  }
}
