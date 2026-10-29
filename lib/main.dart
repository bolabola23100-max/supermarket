import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'game/supermarket_game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SupermarketApp());
}

class SupermarketApp extends StatelessWidget {
  const SupermarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GameWidget<SupermarketGame>(game: SupermarketGame()),
      ),
    );
  }
}
