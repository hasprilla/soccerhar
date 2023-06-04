import '../../entities/team/team.dart';

abstract class TeamRepository {
  Future<List<Team>> getNowTeams({String name});
}
