import 'dart:async';

import 'package:flame/events.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  final game = MyGame(); // Use MyGame instead of FlameGame
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  runApp(GameWidget(game: game));
}

class MyGame extends FlameGame with TapDetector{ // Rename the class to MyGame
  @override
  FutureOr<void> onLoad() {
    //print('<game loop> onLoad() called');
    return super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
 //   print('<game loop> update called at delta time $dt');
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawPaint(Paint()..color = Colors.red.shade200);
 //   print('<game loop> render called');
  }

  
}
