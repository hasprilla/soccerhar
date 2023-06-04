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
                return Padding(
                  padding: const EdgeInsets.all(2),
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(teams.strTeamLogo),
                        SizedBox(
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4, top: 10),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Row(
                                  children: [
                                    CustomChip(
                                        text: 'Año: ${teams.intFormedYear}'),
                                    const SizedBox(width: 4),
                                    CustomChip(
                                        text: 'Estadio: ${teams.strStadium}'),
                                    const SizedBox(width: 4),
                                    CustomChip(
                                        text: 'Genero: ${teams.strGender}'),
                                    const SizedBox(width: 4),
                                    CustomChip(
                                        text: 'Pais: ${teams.strCountry}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
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

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
