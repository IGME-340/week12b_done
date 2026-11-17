import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'game.dart';
import 'overlay_title.dart';
import 'overlay_main.dart';
import 'overlay_pause.dart';
import 'overlay_info.dart';
import 'overlay_settings.dart';

import 'package:provider/provider.dart';
import 'game_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();

  runApp(ChangeNotifierProvider(
    create:(context) => GameProvider(),
    child: const MainApp())
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GameWidget(
          game: OverlayTutorial(context)..paused = true,
          overlayBuilderMap: {
            'title': (context, game) => OverlayTitle(game: game),
            'main': (context, game) => mainOverlay(context, game),
            'pause': (context, game) => pauseOverlay(context, game),
            'info': (context, game) => InfoOverlay(game: game as OverlayTutorial),
            'settings':(context, game) => settingsOverlay(context,game),
          },
          initialActiveOverlays: const ['title'],
        ),
      ),
    );
  }
}
