import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoIcons extends StatefulWidget {
  const DemoIcons({super.key, required this.title});

  final String title;

  @override
  State<DemoIcons> createState() => _DemoIconsState();
}

class _DemoIconsState extends State<DemoIcons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Material Icon: ',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                  size: 30,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Cupertino Icons: ',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Icon(
                  CupertinoIcons.home,
                  color: Colors.deepOrange,
                  size: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'FontAwesome Icons: ',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                FaIcon(
                  FontAwesomeIcons.house,
                  color: Colors.indigo,
                  size: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
