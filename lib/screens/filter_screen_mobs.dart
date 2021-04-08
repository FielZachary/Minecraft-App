import 'package:flutter/material.dart';
import 'package:minecraft_app/components/selection_tab.dart';

class FilterScreenMobs extends StatefulWidget {
  static const String id = 'filter_screen_mobs';

  @override
  _FilterScreenMobsState createState() => _FilterScreenMobsState();
}

class _FilterScreenMobsState extends State<FilterScreenMobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/BlackBG.jpg',
            ),
          ),
        ),
        //padding: EdgeInsets.symmetric(horizontal: 60.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 48.0,
              ),
              SelectionTabs(),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectionTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          SelectionTab(
            //destination: FilterScreen.id,
            picture: 'assets/images/minecraft_hmobs.png',
          ),
          Container(
            child: Image.asset('assets/images/hostile_title.png'),
            height: 100.0,
            width: 350.0,
          ),
          SelectionTab(
            //destination: FilterScreen.id,
            picture: 'assets/images/minecraft_pmobs.png',
          ),
          Container(
            child: Image.asset('assets/images/passive_title.png'),
            height: 100.0,
            width: 350.0,
          ),
//          SelectionTab(
//            //destination: FilterScreen.id,
//            picture: 'assets/images/minecraft_mobs.jpg',
//          ),
//          Center(
//            child: Text(
//              'MOBS',
//              style: TextStyle(
//                fontSize: 50,
//                fontWeight: FontWeight.bold,
//                color: Colors.white,
//              ),
//            ),
//          ),
//          SelectionTab(
//            //destination: FilterScreen.id,
//            picture: 'assets/images/minecraft_blocks.jpg',
//          ),
//          Center(
//            child: Text(
//              'BLOCKS',
//              style: TextStyle(
//                fontSize: 50,
//                fontWeight: FontWeight.bold,
//                color: Colors.white,
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
