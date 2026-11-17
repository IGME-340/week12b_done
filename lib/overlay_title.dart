import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'game_provider.dart';

///
/// Title Overlay
/// A centered container with title text and two buttons (Start Game, Settings).
/// Start Game also starts the music. Browsers like Chrome block sound until
/// the first click, so the music can't start in the game's onLoad.
///
///


class OverlayTitle extends StatelessWidget {
  final game;

  const OverlayTitle({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 400,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 240, 236, 203),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Overlay Tutorial",
              style: TextStyle(
                color: Colors.black,
                fontSize: 48,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final gameProvider = context.read<GameProvider>();
                gameProvider.playBgm('retro_bgm.wav');

                game.paused = false;
                game.overlays.remove('title'); 

                game.overlays.add('main');  // Show HUD
              },
              child: const Text("Start Game"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                game.overlays.add('settings');
              },
              child: const Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
