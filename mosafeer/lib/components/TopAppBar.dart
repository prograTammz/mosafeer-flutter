import 'package:flutter/material.dart';

import '../colors.dart';
import './TopBarIndicator.dart';
class TopAppBar extends StatefulWidget{

  final TabController tabController;
  const TopAppBar({Key key, @required this.tabController}):super(key:key);

  @override
  _TopAppBar createState() => _TopAppBar();
}

class _TopAppBar extends State<TopAppBar>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              child: IconButton(
                iconSize: 24.0,
                padding: EdgeInsets.all(0.0),
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
          ), 
          Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 1.4,
            child:Text("مسافر",
                style: TextStyle(
                  fontFamily: "Dima Kereshmeh",
                  fontSize: 24,
                  color: kMosafeerPrimaryWhite),
                  textAlign: TextAlign.center,
            )
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width -100,
            child:TabBar(
                 indicator: CircularTabIndicator(),
                 controller: widget.tabController,
                 labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                 tabs: <Widget>[
                   Tab(text: "EXPLORE"),
                   Tab(text: "HANGOUT"),
                   Tab(text: "GUIDE"),
                ],
               )
            ),
        ],
      ),
    );
  }
}
