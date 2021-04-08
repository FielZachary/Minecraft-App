import 'package:flutter/material.dart';
import 'package:minecraft_app/components/selection_tab.dart';

class FilterScreen extends StatefulWidget {
  static const String id = 'filter_screen_blocks';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
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
            destination: FilterScreen.id,
            picture: 'assets/images/minecraftitems.jpg',
          ),
          Center(
            child: Text(
              'ITEMS',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SelectionTab(
            destination: FilterScreen.id,
            picture: 'assets/images/MINECRAFT_BIOME.jpg',
          ),
          Center(
            child: Text(
              'BIOMES',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SelectionTab(
            destination: FilterScreen.id,
            picture: 'assets/images/minecraft_mobs.jpg',
          ),
          Center(
            child: Text(
              'MOBS',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SelectionTab(
            destination: FilterScreen.id,
            picture: 'assets/images/minecraft_blocks.jpg',
          ),
          Center(
            child: Text(
              'BLOCKS',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
