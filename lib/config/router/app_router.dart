import 'package:go_router/go_router.dart';
import 'package:soccerhar/presentation/screens/detail/detail_screen.dart';
import 'package:soccerhar/presentation/screens/home/home_screens.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/detail/:id',
      name: 'detail',
      builder: (context, state) {
        final id = state.params['id'] ?? 'no-id';
        return DetailScreen(
          id: id,
        );
      },
    ),
  ],
);
