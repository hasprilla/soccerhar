import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/repositories/team_repository.dart';
import '../../../infraestructure/datasources/teamdb_datasource.dart';
import '../../../infraestructure/repositories/team_repository_impl.dart';

final teamRepositoryProvider = Provider<TeamRepository>((ref) {
  return TeamRepositoryImpl(TeamDbDatasource());
});
