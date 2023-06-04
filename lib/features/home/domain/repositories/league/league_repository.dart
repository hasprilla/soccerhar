import '../../entities/league/league.dart';

abstract class LeagueRepository {
  Future<List<League>> getNowLeagues();
}
