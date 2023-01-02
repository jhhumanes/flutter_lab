import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DemoButtons extends StatefulWidget {
  const DemoButtons({super.key, required this.title});

  final String title;

  @override
  State<DemoButtons> createState() => _DemoButtonsState();
}

class _DemoButtonsState extends State<DemoButtons> {
  String botonPulsado = 'Ninguno';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatingPulsado,
        tooltip: 'Click me',
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('El botón pulsado es: '),
            Text(
              botonPulsado,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: _elevatedButtonPulsado,
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: Colors.amber,
                  shadowColor: Colors.amberAccent,
                ),
                child: const Text('ElevatedButton'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextButton(
                onPressed: _textButtonPulsado,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('TextButton'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.green,
                ),
                child: IconButton(
                  onPressed: _iconButtonPressed,
                  icon: const Icon(Icons.access_alarm),
                  color: Colors.white,
                  iconSize: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: OutlinedButton(
                onPressed: _outlinedButtonPulsado,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    width: 1,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Text(
                  'OutlinedButton',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CupertinoButton(
                onPressed: _cupertinoButtonPulsado,
                color: Colors.redAccent,
                child: const Text('CupertinoButton'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _floatingPulsado() {
    _queBoton('flo');
  }

  void _elevatedButtonPulsado() {
    _queBoton('ele');
  }

  void _textButtonPulsado() {
    _queBoton('tex');
  }

  void _iconButtonPressed() {
    _queBoton('ico');
  }

  void _outlinedButtonPulsado() {
    _queBoton('out');
  }

  void _cupertinoButtonPulsado() {
    _queBoton('cup');
  }

  void _queBoton(String boton) {
    setState(() {
      switch (boton) {
        case 'flo':
          botonPulsado = 'FloatingActionButton';
          break;
        case 'ele':
          botonPulsado = 'ElevatedButton';
          break;
        case 'tex':
          botonPulsado = 'TextButton';
          break;
        case 'ico':
          botonPulsado = 'IconButton';
          break;
        case 'out':
          botonPulsado = 'OutlinedButton';
          break;
        case 'cup':
          botonPulsado = 'CupertinoButton';
          break;
      }
    });
  }
}
