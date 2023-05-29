import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../class/various_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _myController = TextEditingController();
  final List<String> _item = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      endDrawer: commonDrawer(1, context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _myController,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _item.length,
                itemBuilder: (_, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(_item[index]),
                    ),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _item.add(_myController.text);
          });
          _myController.clear();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
