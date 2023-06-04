import '../../../domain/datasources/league/league_datasource.dart';
import '../../../domain/entities/league/league.dart';
import '../../../domain/repositories/league/league_repository.dart';

class LeagueRepositoryImpl extends LeagueRepository {
  final LeagueDatasource datasource;

  LeagueRepositoryImpl(this.datasource);
  @override
  Future<List<League>> getNowLeagues() {
    return datasource.getNowLeagues();
  }
}
