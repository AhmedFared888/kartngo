import 'package:go_router/go_router.dart';
import 'package:kartngo/features/home/presentation/views/home_view.dart';

class RoutesManager {
  static const homeView = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
