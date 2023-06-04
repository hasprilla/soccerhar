import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'leagues/leagues_providers.dart';
import 'teams/teams_providers.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  final step1 = ref.watch(nowLeaguesProvider);
  final step2 = ref.watch(teamsNotifierProvider).isEmpty;
  if (step1.isNotEmpty && step2) {
    print('object');
    ref.read(teamsNotifierProvider.notifier).loadPage(step1.first.strLeague);
  }
  if (step1.isEmpty || step2) return true;
  return false;
});
