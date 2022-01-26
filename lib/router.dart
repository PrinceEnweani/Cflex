import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cflex/constants.dart';
import 'package:cflex/game.dart';
import 'package:page_transition/page_transition.dart';

Route<dynamic> gameRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case GamePageRoute:
      var gameMode = routeSettings.arguments;
      return PageTransition(child: GamePage(level: gameMode), type: PageTransitionType.fade);
    case MainPageRoute:
      return PageTransition(child: MyHomePage(title: "Hellow"), type: PageTransitionType.fade);
    default:
      return PageTransition(child: MyHomePage(title: "Hellow"), type: PageTransitionType.fade);
  }
}
