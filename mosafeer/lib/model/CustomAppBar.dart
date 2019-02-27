import 'package:flutter/material.dart';
import '../components/TopAppBar.dart';

import '../components/TopBarIndicator.dart';
import '../colors.dart';
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
      floating: false, pinned: true, snap: false,
      expandedHeight: 120,
      leading: IconButton(
                iconSize: 24.0,
                padding: EdgeInsets.all(0.0),
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
                Align(
                    alignment: Alignment.bottomRight,
                    heightFactor: 1.4,
                    child: Text(
                      "مسافر",
                      style: TextStyle(
                          fontFamily: "Dima Kereshmeh",
                          fontSize: 24,
                          color: kMosafeerPrimaryWhite),
                      textAlign: TextAlign.left,
                    )),
 
                Expanded(
                  flex: 1,
                  child: TabBar(
                    indicator: CircularTabIndicator(),
                    controller: _tabController,
                    labelStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    tabs: <Widget>[
                      Tab(
                        text: "EXPLORE",
                      ),
                      Tab(
                        text: "HANGOUT",
                      ),
                      Tab(
                        text: "GUIDE",
                      )
                    ],
                  ),
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 120),
              child: Container(
                height: 120,
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    buildExploreMenu(context),
                    buildHangoutMenu(context),
                    buildGuideMenu(context)
                  ],
                ),
              ),
            ),
      );
      
  }
}
Widget buildExploreMenu(context){

  List<IconData> icons = [Icons.terrain,Icons.spa,Icons.place,Icons.local_library];
  List<String> names = ["HISTORICAL","LEISURE","RELIGIOUS","CULTURE"];

  return buildMenu(4,context, icons, names);
}
Widget buildHangoutMenu(context){

  List<IconData> icons = [Icons.local_dining,Icons.pool,Icons.store_mall_directory,Icons.hotel];
  List<String> names = ["RESTURANTS","SPORT","SHOPPING","HOTELS"];

  return buildMenu(4,context, icons, names);

}
Widget buildGuideMenu(context){

  List<IconData> icons = [Icons.attach_money,Icons.directions_bus,Icons.local_atm];
  List<String> names = ["CURRENCY","TRANSPORT","PRICE GUIDE"];

  return buildMenu(3,context, icons, names);
}
Widget buildMenu(count,context,icons,names){
  return Center(
    child: GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio:((MediaQuery.of(context).size.width / 2) / 50),
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 4.0),
      shrinkWrap: true,
      children: List.generate(count, (index){
        return 
        RaisedButton(
          onPressed: () {},
          splashColor: kMosafeerPurple900,
          highlightColor: kMosafeerPurple900,
          color: Theme.of(context).accentColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(icons[index],color: Colors.white,),
                Text(names[index],style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700
                ),)
              ],
            ),
          ),
        );
      }),
    ),
  );
}