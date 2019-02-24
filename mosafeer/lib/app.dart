import 'package:flutter/material.dart';

import 'colors.dart';
import 'theme.dart';
import 'home.dart';

class MosafeerApp extends StatelessWidget{

  @override
  Widget build(BuildContext contect){
    return MaterialApp(
      title: 'Mosafeer',
      home: HomePage(),
      initialRoute: '/',
      onGenerateRoute: _getRoute,
      theme: _kMosafeerTheme,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => MosafeerApp(),
      fullscreenDialog: true,
    );
  }

}
final ThemeData _kMosafeerTheme = mosafeerTheme();