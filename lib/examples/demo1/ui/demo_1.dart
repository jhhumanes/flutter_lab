import 'package:flutter/material.dart';

const Icon _unpressedIcon = Icon(
  Icons.favorite_border,
  color: Colors.white,
);
const Icon _pressedIcon = Icon(
  Icons.favorite,
  color: Colors.white,
);

class Demo1Page extends StatefulWidget {
  const Demo1Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Demo1Page> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<Demo1Page> {
  bool _actionPressed = false;
  Icon _actionIcon = _unpressedIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () => {_onAction()},
            icon: _actionIcon,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {_onAction()},
        backgroundColor: Colors.red,
        child: _actionIcon,
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () => {_onAction()},
      //   backgroundColor: Colors.red,
      //   icon: _actionIcon,
      //   label: const Text('¡Like!'),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              IconButton(
                onPressed: null,
                icon: Icon(Icons.camera_enhance, color: Colors.white),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onAction() {
    setState(() {
      if (_actionPressed) {
        _actionIcon = _unpressedIcon;
        _actionPressed = false;
      } else {
        _actionIcon = _pressedIcon;
        _actionPressed = true;
      }
    });
  }
}
