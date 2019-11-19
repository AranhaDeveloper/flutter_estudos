import 'package:flutter/material.dart';
import 'package:flutter_barber/layout.dart';


class SettingsPage extends StatelessWidget {

  static String tag = 'settings-page';

  @override
  Widget build(BuildContext context) {
    return Layout.getContent(context, Center(child: Text('Settings Page'),));
  }
}