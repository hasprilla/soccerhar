import '../../entities/league/league.dart';

abstract class LeagueDatasource {
  Future<List<League>> getNowLeagues();
}
