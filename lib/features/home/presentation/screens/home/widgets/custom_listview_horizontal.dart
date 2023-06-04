import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/entities/league/league.dart';
import '../../../providers/teams/teams_providers.dart';

class CustomListviewHorizontal extends ConsumerWidget {
  final List<League> leagues;
  const CustomListviewHorizontal({
    super.key,
    required this.leagues,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: leagues.length,
          itemBuilder: (context, index) {
            final league = leagues[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: FilledButton.tonal(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    index == 0 ? Colors.amber : Colors.blue,
                  ),
                ),
                onPressed: () => ref
                    .read(teamsNotifierProvider.notifier)
                    .loadPage(league.strLeague),
                child: Text(league.strLeague),
              ),
            );
          },
        ),
      ),
    );
  }
}
