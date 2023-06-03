import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soccerhar/presentation/providers/teams/teams_providers.dart';

class CustomListviewVertical extends ConsumerWidget {
  const CustomListviewVertical({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teams = ref.watch(teamsNotifierProvider);

    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      child: Expanded(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: teams.length,
          itemBuilder: (context, index) {
            final team = teams[index];

            return Visibility(
              child: teams.isEmpty
                  ? const CircularProgressIndicator()
                  : ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(team.strTeamBadge),
                      ),
                      title: Text(team.strTeam),
                      subtitle: Text(team.strTeam),
                    ),
            );
          },
        ),
      ),
    );
  }
}
