import 'package:flutter/material.dart';

import 'pages/about.dart';
import 'pages/home.dart';
import 'pages/settings.dart';

class Layout {

  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    SettingsPage.tag
  ];

  static int currItem = 1;

  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text('ThizerList'),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currItem,
        fixedColor: danger(),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home')
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.question_answer),
          title: Text('Sobre')
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Configurações')
          ),

        ],
        onTap: (int i) {
          currItem = i;
          Navigator.of(context).pushNamed(pages[currItem]);
        },
      ),
      body: content,
    );
  }


static Color primary([int opacity = 1]) => Color.fromARGB(62, 63, 89, opacity);
static Color secondary([int opacity = 1]) => Color.fromARGB(111, 168, 191, opacity);
static Color light([int opacity = 1]) => Color.fromARGB(242, 234, 228, opacity);

static Color danger([int opacity = 1]) => Color.fromARGB(217, 74, 74, opacity);
static Color success([int opacity = 1]) => Color.fromARGB(6, 166, 59, opacity);
static Color info([int opacity = 1]) => Color.fromARGB(0, 122, 166, opacity);
static Color warning([int opacity = 1]) => Color.fromARGB(166, 134, 0, opacity);

}