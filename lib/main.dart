import 'package:flutter/material.dart';
import 'package:flutter_lab/examples/demo1/ui/demo_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Lab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Demo1Page(title: 'Scaffold Demo'),
    );
  }
}
