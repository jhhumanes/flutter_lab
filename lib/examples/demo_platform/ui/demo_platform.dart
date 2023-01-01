import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

const Icon _unpressedIcon = Icon(
  Icons.favorite_border,
  color: Colors.white,
);
const Icon _pressedIcon = Icon(
  Icons.favorite,
  color: Colors.white,
);

class DemoPlatform extends StatefulWidget {
  const DemoPlatform({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DemoPlatform> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<DemoPlatform> {
  bool _actionPressed = false;
  Icon _actionIcon = _unpressedIcon;
  int _elementoSeleccionado = 0;
  String _textoAVisualizar = '0: Inicio';

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? material() : cupertino();
  }

  Widget material() {
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {_onAction()},
        backgroundColor: Colors.red,
        icon: _actionIcon,
        label: const Text('¡Like!'),
      ),
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

  Widget cupertino() {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, color: Colors.white),
            label: 'Mi cuenta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Colors.white),
            label: 'Estadísticas',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                    navigationBar: const CupertinoNavigationBar(
                      backgroundColor: Colors.blue,
                      leading: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      middle: Text(
                        'Título de página',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$index: Inicio',
                            style: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                    child: Center(
                  child: Column(
                    children: [
                      Text(
                        '$index: Mi cuenta',
                        style: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ));
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                    child: Center(
                  child: Column(
                    children: [
                      Text(
                        '$index: Estadísticas',
                        style: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ));
              },
            );
          default:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                    child: Center(
                  child: Column(
                    children: [
                      Text(
                        '$index: Inicio',
                        style: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ));
              },
            );
        }
      },
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
