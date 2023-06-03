import 'package:dio/dio.dart';
import 'package:soccerhar/infraestructure/mappers/league_mapper.dart';
import 'package:soccerhar/infraestructure/models/leaguedb_response.dart';

import '../../config/constants/environment.dart';
import '../../domain/datasources/league_datasource.dart';
import '../../domain/entities/league.dart';

class LeagueDbDatasource extends LeagueDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: Environment.baseUrl,
  ));

  @override
  Future<List<League>> getNowLeagues() async {
    final response = await dio.get('/all_leagues.php');
    final leagueResponse = LeagueResponse.fromJson(response.data);
    final List<League> leagues = leagueResponse.leagues
        .map(
          (e) => LeagueMapper.leagueDBToEntity(e),
        )
        .toList();
    return leagues;
  }
}
