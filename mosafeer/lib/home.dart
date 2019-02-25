import 'package:flutter/material.dart';

import './components/TopAppBar.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 10.0,
        backgroundColor: Theme.of(context).primaryColor,
        flexibleSpace: TopAppBar(),
        
      ),
      body: Center(
        child: Text("Shit"),
      ),
    );
  }
}