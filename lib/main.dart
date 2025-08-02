import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/routes_manager.dart';
import 'package:kartngo/core/utils/theme_manager.dart';

void main() {
  runApp(const Kartngo());
}

class Kartngo extends StatelessWidget {
  const Kartngo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RoutesManager.router,
      debugShowCheckedModeBanner: false,
      theme: getApptheme(),
    );
  }
}
