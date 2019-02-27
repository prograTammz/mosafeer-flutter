import 'package:flutter/material.dart';

import 'colors.dart';
import './components/TopAppBar.dart';
import './model/CustomAppBar.dart';
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kMosafeerPrimaryWhite,
      body: CustomScrollView(
        
        slivers: <Widget>[
          CustomAppBar(),
          
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          )
          
        ],

      ),
      bottomNavigationBar: Container(
        
        
        child:BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title:Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.explore), title:Text('Explore')),
          BottomNavigationBarItem(icon: Icon(Icons.photo_album), title: Text('SnapBook')),
          BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('Map')),
          BottomNavigationBarItem(icon: Icon(Icons.forum), title: Text('SnapBook')),
        ],
        fixedColor: kMosafferBlac,
      )),
    );
  }
}