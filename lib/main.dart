import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _count = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueNotifier'),
      ),
      body: Center(
        child: ValueListenableBuilder<int>(
            valueListenable: _count,
            builder: (context, value, _) {
              return Text(
                '$value',
                style: const TextStyle(
                  fontSize: 30,
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _count.value++,
      ),
    );
  }
}
