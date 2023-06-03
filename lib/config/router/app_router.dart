import 'package:go_router/go_router.dart';
import 'package:soccerhar/presentation/screens/home/home_screens.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    )
  ],
);
