import 'package:flutter/material.dart';
import 'filter_screen_1.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'dart:async';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  dynamic assetsAudioPlayer = AssetsAudioPlayer();
  var click = 'assets/audios/click.mp3';

  @override
  void initState() {
    super.initState();
//    assetsAudioPlayer.toggleLoop();
//    final bool isLooping = assetsAudioPlayer.loop;
//    assetsAudioPlayer.loop = true; //set loop as true
//    assetsAudioPlayer = AssetsAudioPlayer();
//    assetsAudioPlayer.openPlaylist(Playlist(assetAudioPaths: [
//      click,
//      //"assets/audios/sweden.mp3",
//    ]));
//
//    assetsAudioPlayer.isLooping.listen((loop) {
//      assetsAudioPlayer.isLooping.playlistPlayAtIndex(0);
//    });

    assetsAudioPlayer.loop = true; //set loop as true

    assetsAudioPlayer.isLooping.listen((loop) {
      click;
    });

    assetsAudioPlayer.toggleLoop(); //toggle the value of looping

    Timer(Duration(seconds: 6), () {
      Navigator.of(context).push(_createRoute());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
              Colors.white10.withOpacity(
                0.4,
              ),
              BlendMode.dstATop,
            ),
            image: AssetImage(
              'assets/images/minecraftBACKGROUND.png',
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 100.0),
                      ),
                      Container(
                        child: Image.asset('assets/images/MINECRAFT_INFO.png'),
                        height: 78.0,
                        width: 350.0,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        child: Image.asset('assets/images/MINECRAFT_INFO2.png'),
                        height: 78.0,
                        width: 300.0,
                      ),
                    ],
                  ),
                ],
              ),
//              SizedBox(
//                height: 200.0,
//              ),
//              Container(
//                child: FlatButton(
//                  onPressed: () {
////                    assetsAudioPlayer.playlistPlayAtIndex(1);
////                    setState(
////                      () {
////                        leverstatus = "on";
////                      },
////                    );
////                    print('playing index 1');
//
//                    Navigator.of(context).push(_createRoute());
//                  },
//                  //padding: EdgeInsets.symmetric(horizontal: 50.0),
//                  child: Image.asset(
//                    'assets/images/minecraft_lever$leverstatus.png',
//                  ),
//                ),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => FilterScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(350.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
