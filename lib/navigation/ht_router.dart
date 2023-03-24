import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HTRouter {
  late BuildContext context;

  static final HTRouter _inst = HTRouter._internal();

  HTRouter._internal();

  factory HTRouter(BuildContext context) {
    _inst.context = context;
    return _inst;
  }

  goToHome() {
    context.router.replaceNamed('/home');
  }

  goToSettings() {
    context.router.pushNamed('/settings');
  }

  goToMyHabits() {
    context.router.pushNamed('/root/myHabits');
  }

  goToMyHabits2() {
    context.router.pushNamed('myHabits');
  }

  goToLogin2() {
    context.router.pushNamed('login2');
  }

  pop() {
    context.router.pop();
  }

  back() {
    context.back();
  }
}
