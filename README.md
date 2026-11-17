# Week 12B Done - IGME-340

The asteroid game as it stands at the end of [12B](https://github.com/jptweb/IGME-340-Shared/blob/main/weekly/12B.md): asteroids that bounce off each other, the title, HUD, pause, info and settings overlays, Provider holding the score and volumes, background music, and a sound on every tap.

Use it if you fell behind, or if your own copy has a bug you can't track down. It's also fine as a starting point for Project 3.

## Get the Code

- **Your own copy:** click **Use this template** at the top of this page, then **Create a new repository**.
- **Just the files:** **Code** → **Download ZIP**.
- **Catching up in your participation repo:** copy this repo's `lib/` folder over yours. Your repo already has the same packages and assets, so nothing else needs to change. Then commit and push like normal.

Open the folder that *contains* `pubspec.yaml`, and don't put it in a path with spaces.

## Run It

```bash
flutter pub get
flutter run
```

Press **Start Game** and the music starts. Tap anywhere to score.

Use the Android emulator if you can. The info screen uses a WebView, which doesn't work in Chrome. Everything else runs fine in Chrome.

## One Difference from What We Did in Class

The music starts from the Start Game button instead of the game's `onLoad`. Chrome blocks sound until you click something on the page, so music started in `onLoad` never plays there. The 12B notes now show it this way as Step 9B.

Next up: [13A](https://github.com/jptweb/IGME-340-Shared/blob/main/weekly/13A.md) adds bottom navigation to this same app.
