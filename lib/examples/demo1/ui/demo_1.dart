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
  int _elementoSeleccionado = 0;
  String _textoAVisualizar = '0: Inicio';

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
      drawer: Drawer(
        child: Column(
          children: const [
            DrawerHeader(
              child: Text(
                'Drawer Menu',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text("Enlace 1"),
            Text("Enlace 2"),
            Text("Enlace 3"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _textoAVisualizar,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => {_onAction()},
      //   backgroundColor: Colors.red,
      //   child: _actionIcon,
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {_onAction()},
        backgroundColor: Colors.red,
        icon: _actionIcon,
        label: const Text('¡Like!'),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.blue,
      //   shape: const CircularNotchedRectangle(),
      //   child: SizedBox(
      //     height: 50,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: const [
      //         IconButton(
      //           onPressed: null,
      //           icon: Icon(Icons.camera_enhance, color: Colors.white),
      //         ),
      //         IconButton(
      //           onPressed: null,
      //           icon: Icon(Icons.arrow_back, color: Colors.white),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, color: Colors.white),
            label: 'Mi cuenta',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment, color: Colors.white),
              label: 'Estadísticas'),
        ],
        currentIndex: _elementoSeleccionado,
        onTap: _itemPulsado,
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

  void _itemPulsado(int index) {
    setState(() {
      _elementoSeleccionado = index;
      switch (_elementoSeleccionado) {
        case 0:
          _textoAVisualizar = '$_elementoSeleccionado: Inicio';
          break;
        case 1:
          _textoAVisualizar = '$_elementoSeleccionado: Mi cuenta';
          break;
        case 2:
          _textoAVisualizar = '$_elementoSeleccionado: Estadísticas';
          break;
      }
    });
  }
}
