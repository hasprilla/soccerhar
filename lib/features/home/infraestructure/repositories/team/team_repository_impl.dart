import '../../../domain/datasources/team/team_datasource.dart';
import '../../../domain/entities/team/team.dart';
import '../../../domain/repositories/team/team_repository.dart';

class TeamRepositoryImpl extends TeamRepository {
  final TeamDatasource datasource;

  TeamRepositoryImpl(this.datasource);
  @override
  Future<List<Team>> getNowTeams({String name = ''}) {
    return datasource.getNowTeams(name: name);
  }
}
