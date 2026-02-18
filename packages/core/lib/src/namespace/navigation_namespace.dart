import 'package:core/core.dart';
import 'package:flutter/material.dart';

abstract final class Routes {
  static const home = 'home';
  static const session = 'session';
  static const profile = 'profile';
}

extension type NavigationNamespace(BuildContext context) {
  void toHome() => context.go(Routes.home);
  void toSession() => context.go(Routes.session);
  void toProfile() => context.go(Routes.profile);

  void pop() => context.pop();
}

extension NavigationNamespaceContext on BuildContext {
  NavigationNamespace get navigation => NavigationNamespace(this);
}
