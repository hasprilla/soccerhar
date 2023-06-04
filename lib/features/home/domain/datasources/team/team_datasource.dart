import '../../entities/team/team.dart';

abstract class TeamDatasource {
  Future<List<Team>> getNowTeams({String name});
}
