import 'package:dio/dio.dart';
import 'package:soccerhar/config/constants/environment.dart';
import 'package:soccerhar/domain/entities/team.dart';
import 'package:soccerhar/infraestructure/mappers/team_mapper.dart';
import 'package:soccerhar/infraestructure/models/team_response.dart';

import '../../domain/datasources/team_datasource.dart';

class TeamDbDatasource extends TeamDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: Environment.baseUrl,
  ));

  @override
  Future<List<Team>> getNowTeams({String name = ''}) async {
    final response =
        await dio.get('/search_all_teams.php?l=${name.replaceAll(' ', '%20')}');
    final teamsResponse = TeamsResponse.fromJson(response.data);
    final teams = <Team>[];
    for (final team in teamsResponse.teams) {
      teams.add(TeamMapper.jsonToEntity(team));
    }
    return teams;
  }
}
