import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../infraestructure/datasources/leaguedb_datasource.dart';
import '../../../infraestructure/repositories/league_repository_impl.dart';

final leagueRepositoryProvider = Provider((ref) {
  return LeagueRepositoryImpl(LeagueDbDatasource());
});
