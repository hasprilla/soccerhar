import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../providers/teams/teams_providers.dart';

class CustomListviewVertical extends ConsumerWidget {
  const CustomListviewVertical({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teams = ref.watch(teamsNotifierProvider);
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(bottom: 180),
        itemCount: teams.length,
        itemBuilder: (context, index) {
          final team = teams[index];
          return Visibility(
            child: teams.isEmpty
                ? const CircularProgressIndicator()
                : ListTile(
                    leading: SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FadeInImage(
                          fit: BoxFit.contain,
                          placeholder: const AssetImage(
                              'assets/loaders/bottle-loader.gif'),
                          image: NetworkImage(team.strTeamLogo),
                        ),
                      ),
                    ),
                    title: Text('${team.strTeam} - ${team.intFormedYear}'),
                    subtitle: Text(team.strStadium),
                    onTap: () =>
                        context.push('/detailequipment/${team.idTeam}'),
                  ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Divider(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
