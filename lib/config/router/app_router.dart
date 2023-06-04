import 'package:go_router/go_router.dart';
import 'package:soccerhar/features/detail_equipment/presentation/screens/detail_%20equipment_screen.dart';
import 'package:soccerhar/features/home/domain/entities/team/team.dart';

import '../../features/home/presentation/screens/home/home_screens.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/detailequipment',
      name: 'detail',
      builder: (context, state) {
        return DetailEquipmentScreen(
          teams: state.extra as Team,
        );
      },
    ),
  ],
);
