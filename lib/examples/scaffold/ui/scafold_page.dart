import 'package:flutter/material.dart';

const Icon _unpressedIcon = Icon(
  Icons.favorite_border,
  color: Colors.white,
);
const Icon _pressedIcon = Icon(
  Icons.favorite,
  color: Colors.white,
);

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
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
