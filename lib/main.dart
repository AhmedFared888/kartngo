import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/routes_manager.dart';
import 'package:kartngo/core/utils/theme_manager.dart';
import 'package:kartngo/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
