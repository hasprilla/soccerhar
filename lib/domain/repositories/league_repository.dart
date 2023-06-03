import '../entities/league.dart';

abstract class LeagueRepository {
  Future<List<League>> getNowLeagues();
}
