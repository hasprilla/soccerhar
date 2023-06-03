import '../../domain/datasources/team_datasource.dart';
import '../../domain/entities/team.dart';
import '../../domain/repositories/team_repository.dart';

class TeamRepositoryImpl extends TeamRepository {
  final TeamDatasource datasource;

  TeamRepositoryImpl(this.datasource);
  @override
  Future<List<Team>> getNowTeams({String name = ''}) {
    return datasource.getNowTeams(name: name);
  }
}
