import 'package:flutter/material.dart';
import 'package:minecraft_app/components/selection_tab.dart';
import 'filter_screen_biomes.dart';
import 'filter_screen_mobs.dart';

class FilterScreen extends StatefulWidget {
  static const String id = 'filter_screen';

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
              'assets/images/bg-wool-dark.png',
            ),
          ),
        ),
        //padding: EdgeInsets.symmetric(horizontal: 60.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
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
            destination: 'filter_screen_items',
            picture: 'assets/images/minecraftitems.jpg',
          ),
          Container(
            child: Image.asset('assets/images/items_caption.png'),
            height: 100.0,
            width: 350.0,
          ),
          SelectionTab(
            destination: FilterScreenBiomes.id,
            picture: 'assets/images/MINECRAFT_BIOME.jpg',
          ),
          Container(
            child: Image.asset('assets/images/biomes_caption.png'),
            height: 100.0,
            width: 350.0,
          ),
          SelectionTab(
            destination: FilterScreenMobs.id,
            picture: 'assets/images/minecraft_mobs.jpg',
          ),
          Container(
            child: Image.asset('assets/images/mobs_caption.png'),
            height: 100.0,
            width: 350.0,
          ),
          SelectionTab(
            destination: FilterScreen.id,
            picture: 'assets/images/minecraft_blocks.jpg',
          ),
          Container(
            child: Image.asset('assets/images/blocks_caption.png'),
            height: 100.0,
            width: 350.0,
          ),
        ],
      ),
    );
  }
}
