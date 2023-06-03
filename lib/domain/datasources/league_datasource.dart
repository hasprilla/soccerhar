import '../entities/league.dart';

abstract class LeagueDatasource {
  Future<List<League>> getNowLeagues();
}
