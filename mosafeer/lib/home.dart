import 'package:flutter/material.dart';

import 'colors.dart';
import './components/TopAppBar.dart';
import './model/CustomAppBar.dart';
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kMosafeerPurple800,
      body: CustomScrollView(
        
        slivers: <Widget>[
          CustomAppBar(),
          SliverFillRemaining(
            child: Container(
              margin: EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, -8.0)
                  )
                ]
              ),
            ),
          )
        ],

      ),
    );
  }
}