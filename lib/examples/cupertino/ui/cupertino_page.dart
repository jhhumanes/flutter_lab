import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPage extends StatefulWidget {
  const CupertinoPage({super.key});

  @override
  State<CupertinoPage> createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  @override
  Widget build(BuildContext context) {
    // return CupertinoPageScaffold(
    //   child: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: const [
    //         Text('Cupertino App'),
    //       ],
    //     ),
    //   ),
    // );

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
}
