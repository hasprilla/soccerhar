import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/repositories/team/team_repository.dart';
import '../../../infraestructure/datasources/team/teamdb_datasource.dart';
import '../../../infraestructure/repositories/team/team_repository_impl.dart';

final teamRepositoryProvider = Provider<TeamRepository>((ref) {
  return TeamRepositoryImpl(TeamDbDatasource());
});
