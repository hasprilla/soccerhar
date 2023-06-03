import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soccerhar/domain/entities/team.dart';
import 'package:soccerhar/presentation/providers/teams/team_repository_provider.dart';

final teamsNotifierProvider =
    StateNotifierProvider<TeamNotifier, List<Team>>((ref) {
  final fetchTeams = ref.watch(teamRepositoryProvider).getNowTeams;
  return TeamNotifier(fetchTeams: fetchTeams);
});

typedef TeamCallback = Future<List<Team>> Function({String name});

class TeamNotifier extends StateNotifier<List<Team>> {
  TeamCallback fetchTeams;
  TeamNotifier({
    required this.fetchTeams,
  }) : super([]);

  Future<void> loadPage(String name) async {
    final List<Team> teams = await fetchTeams(name: name);
    state = [...teams];
  }
}
