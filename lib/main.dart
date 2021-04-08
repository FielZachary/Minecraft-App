import 'package:flutter/material.dart';
import 'package:minecraft_app/screens/filter_screen_biomes.dart';
import 'package:minecraft_app/screens/filter_screen_mobs.dart';
import 'screens/filter_screen_1.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            body1: TextStyle(color: Colors.black54),
          ),
        ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          FilterScreen.id: (context) => FilterScreen(),
          FilterScreenMobs.id: (context) => FilterScreenMobs(),
          FilterScreenBiomes.id: (context) => FilterScreenBiomes(),
//          ChatScreen.id: (context) => ChatScreen(),
//          RegistrationScreen.id: (context) => RegistrationScreen(),
        });
  }
}
