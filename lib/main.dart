
import 'package:flutter/material.dart';
import 'package:fluttera/pages/home_page.dart';

import 'config/themes.dart';
import 'widgets/theme_inherited_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: Awais(),
    );
  }
}
class Awais extends StatelessWidget {
  const Awais({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awais Ur Rehman',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}
