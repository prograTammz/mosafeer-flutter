import 'package:flutter/material.dart';
import '../components/TopAppBar.dart';

class CustomAppBar extends StatefulWidget{
  
  @override 
  _CustomAppBarState createState() => _CustomAppBarState();

}

class _CustomAppBarState extends State<CustomAppBar> with TickerProviderStateMixin{

  TabController _tabController;
  

  @override
  void initState(){
    super.initState();
    _tabController =TabController(length: 3, vsync: this);

  }
  @override
  Widget build(BuildContext context){
    return SliverAppBar(
      floating: true,
      expandedHeight: 104,
      flexibleSpace: TopAppBar(tabController: _tabController),
      bottom: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 104.0),
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.red[300],
            ),
            Container(
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}