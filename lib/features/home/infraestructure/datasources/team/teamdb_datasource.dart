import 'package:dio/dio.dart';

import '../../../../../config/constants/environment.dart';
import '../../../domain/datasources/team/team_datasource.dart';
import '../../../domain/entities/team/team.dart';
import '../../mappers/team/team_mapper.dart';
import '../../models/team/team_response.dart';

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
