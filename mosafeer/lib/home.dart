import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text("Hello"),
        ),
      ),
      body: Center(
        child: Text("Shit"),
      ),
    );
  }
}