import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class SupermarketGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    camera.viewfinder.anchor = Anchor.topLeft;

    // خلفية المشهد.
    add(
      RectangleComponent(
        position: Vector2.zero(),
        size: size,
        paint: Paint()..color = const Color(0xFFE8DFC9),
      ),
    );

    // أرضية السوبر ماركت مؤقتًا.
    add(
      RectangleComponent(
        position: Vector2(50, 50),
        size: Vector2(700, 500),
        paint: Paint()..color = const Color(0xFFD8C5A2),
      ),
    );

    // تحميل صورة الرف وإضافتها للمشهد.
    final shelfSprite = await loadSprite(
      'assets/images/furniture/shelves/supermarket_shelf.png',
    );
    add(
      SpriteComponent(
        sprite: shelfSprite,
        position: Vector2(200, 100),
        size: Vector2(300, 281),
      ),
    );
  }
}
