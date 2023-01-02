import 'package:flutter/material.dart';
// import 'package:flutter_lab/examples/demo1/ui/demo_1.dart';
// import 'package:flutter_lab/examples/cupertino/ui/cupertino_page.dart';
// import 'package:flutter_lab/examples/demo_platform/ui/demo_platform.dart';
// import 'package:flutter_lab/examples/buttons/ui/demo_buttons.dart';
import 'package:flutter_lab/examples/icons/ui/demo_icons.dart';

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
      // home: const Demo1Page(title: 'Scaffold Demo'),
      // home: const CupertinoPage(),
      // home: const DemoPlatform(title: 'Demo Platform'),
      // home: const DemoButtons(title: ''),
      home: const DemoIcons(title: ''),
    );
  }
}
