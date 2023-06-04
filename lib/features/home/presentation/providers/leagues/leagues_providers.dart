import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/league/league.dart';
import 'league_repository_provider.dart';

final nowLeaguesProvider =
    StateNotifierProvider<LeaguesNotifier, List<League>>((ref) {
  final fetchLeagues = ref.watch(leagueRepositoryProvider).getNowLeagues;
  return LeaguesNotifier(
    fetchLeagues: fetchLeagues,
  );
});

typedef LeagueCallback = Future<List<League>> Function();

class LeaguesNotifier extends StateNotifier<List<League>> {
  bool isLoading = false;
  LeagueCallback fetchLeagues;
  LeaguesNotifier({
    required this.fetchLeagues,
  }) : super([]);

  Future<void> loadPage() async {
    isLoading = true;
    final List<League> leagues = await fetchLeagues();
    state = [...state, ...leagues];
    isLoading = false;
  }
}
