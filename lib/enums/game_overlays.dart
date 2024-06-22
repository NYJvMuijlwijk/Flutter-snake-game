import 'package:flutter/material.dart';
import 'package:flutter_snake_game/widgets/game_over_menu.dart';
import 'package:flutter_snake_game/widgets/pause_game_menu.dart';
import 'package:flutter_snake_game/widgets/start_game_menu.dart';
import 'package:flutter_snake_game/services/game_service.dart';

enum GameOverlays {
  startGameMenu,
  pauseMenu,
  gameOverMenu,
  ;

  static Map<String, Widget Function(BuildContext, GameService)>
      get overlayBuilderMap => {
            GameOverlays.startGameMenu.name: (context, game) =>
                const StartGameMenu(),
            GameOverlays.pauseMenu.name: (context, game) =>
                const PauseGameMenu(),
            GameOverlays.gameOverMenu.name: (context, game) =>
                const GameOverMenu(),
          };
}
