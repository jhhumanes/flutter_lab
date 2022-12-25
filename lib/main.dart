import 'package:flutter/material.dart';
import 'package:flutter_lab/examples/scaffold/ui/scafold_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScaffoldPage(title: 'Scaffold Demo'),
    );
  }
}
