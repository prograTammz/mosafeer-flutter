import 'package:flutter/material.dart';

import '../theme.dart';
import '../colors.dart';
import './TopBarIndicator.dart';
class TopAppBar extends StatefulWidget{

  final Function(int) tabHandler;
  final TabController tabController;
  const TopAppBar({Key key,this.tabHandler,this.tabController}):super(key:key);

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
            width: MediaQuery.of(context).size.width -100,
            child: DefaultTabController(
              length: 3,
               child: TabBar(
                 indicator: CircularTabIndicator(),
                 tabs: <Widget>[
                  _NavigationTab(
                    title: "EXPLORE",
                    callBack: () => widget.tabHandler(0),
                    tabController: widget.tabController,
                    index: 0,
                  ),
                  _NavigationTab(
                    title: "HANGOUT",
                    callBack: () => widget.tabHandler(0),
                    tabController: widget.tabController,
                    index: 0,
                  ),
                  _NavigationTab(
                    title: "GUIDE",
                    callBack: () => widget.tabHandler(0),
                    tabController: widget.tabController,
                    index: 0,
                  )
                ],
               )
            ),
          )
        ],
      ),
    );
  }
}
class _NavigationTab extends StatefulWidget{
  final String title;
  final Function callBack;
  final TabController tabController;
  final int index;

  const _NavigationTab({
    Key key,
    this.title,
    this.callBack,
    this.tabController,
    this.index
  }) : super(key: key);

  @override
  _NavigationTabState createState() => _NavigationTabState();
}

class _NavigationTabState extends State<_NavigationTab> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    widget.tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FlatButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
        child: Text(
          widget.title,
          style: Theme.of(context).textTheme.button.copyWith(
            color: widget.tabController.index == widget.index
                ? kMosafeerPrimaryWhite
                : kMosafeerPrimaryWhite.withOpacity(.6),
          ),
        ),
        onPressed: widget.callBack,
      ),
    );
  }
}