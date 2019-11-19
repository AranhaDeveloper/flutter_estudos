import 'package:flutter/material.dart';
import 'package:flutter_barber/pages/about.dart';
import 'package:flutter_barber/pages/home.dart';
import 'package:flutter_barber/layout.dart';
import 'package:flutter_barber/pages/settings.dart';

void main() => runApp(ThizerList());

class ThizerList extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    SettingsPage.tag: (context) => SettingsPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThizerList',
      theme: ThemeData(
        primaryColorDark: Colors.blueGrey,
        accentColor: Colors.grey,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Colors.green),
          body1: TextStyle(fontSize: 14)
        )
      ),
      home: HomePage(),
      routes: routes
    );
  }
}