import 'package:flutter/material.dart';
import 'package:soccerhar/features/home/domain/entities/team/team.dart';

class DetailEquipmentScreen extends StatelessWidget {
  final Team teams;
  const DetailEquipmentScreen({
    super.key,
    required this.teams,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text(teams.strTeam),
              centerTitle: false,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [Text(teams.idTeam)],
                );
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}
