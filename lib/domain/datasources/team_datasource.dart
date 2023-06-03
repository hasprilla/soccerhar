import 'package:soccerhar/domain/entities/team.dart';

abstract class TeamDatasource {
  Future<List<Team>> getNowTeams({String name});
}
