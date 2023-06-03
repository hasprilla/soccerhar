import '../entities/team.dart';

abstract class TeamRepository {
  Future<List<Team>> getNowTeams({String name});
}
